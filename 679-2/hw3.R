Rprof(filename="Rprof.out", line.profiling=TRUE)
rm(list = ls())
library(tidyverse)
library(astro)


# 1.First Part: Program the function to filter the data and save the Rdata file

load_one <- function(onepath){
  label <- sub(pattern = ".*(\\d{4})\\.fits",replacement = "\\1",x = onepath)
  test <- as_tibble(read.fitstab(file = onepath)) %>% 
    filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar) %>%
    select_("flux","wavelength")
  assign(x = paste("d",label,sep = ""),value = test)
  save(list = paste("d",label,sep = ""),file = paste("/u/s/h/shuoniu/679/hw3/rdata/",label,".Rdata",sep = ""))
}

# 2.Save the Rdata file.

## The file list
fitslist <- list.files(path = "/p/stat/jgillett/3_1000_FITS_files")

## Get the last four digits of file names
files <- sub(pattern = ".*(\\d{4})\\.fits",replacement = "\\1",x = fitslist)

## Save the 1000 Rdata file
for(i in 1:length(fitslist)){
  load_one(paste("/p/stat/jgillett/3_1000_FITS_files/",fitslist[i],sep = ""))  
}


# 3.Find the nearest galaxy

## The vector to restore the data.
cb_res <-  rep(0,length(files))
names(cb_res) <- files
sharp_res <-  rep(0,length(files))
names(sharp_res) <- files

## Load the target galaxy
y1 <- as_tibble(read.fitstab(file = "/u/s/h/shuoniu/679/hw3/target/cb58_lyman_break_template.fit.txt")) %>% 
  mutate(wavelength = 10^LOGLAM)  %>% 
  select_("FLUX","wavelength") %>% rename(flux = FLUX)
y2 <- as_tibble(read.fitstab(file = "/u/s/h/shuoniu/679/hw3/target/shapley_lyman_break_template.fit.txt")) %>% 
  mutate(wavelength = 10^LOGLAM)  %>% 
  select_("FLUX","wavelength") %>% rename(flux = FLUX)

## Construct the model
model1 <- lm(flux~ poly(wavelength,3),data = y1)
model2 <- lm(flux~ poly(wavelength,3),data = y2)


## Calculate the distance

### Option1: Use the Rdata file
system.time(
for(i in files){
  load(file = paste("/u/s/h/shuoniu/679/hw3/rdata/",i,".Rdata",sep = ""))
  test = get(x = paste("d",i,sep = ""))
  res1 <- predict(model1,newdata = test)
  res2 <- predict(model2,newdata = test)
  cb_res[i] <- mean((test$flux - res1)^2)
  sharp_res[i] <- mean((test$flux - res2)^2)
})

# # ### Option2: Use the original fits file (Uncomment ths following codes)
#
# system.time(
# for(i in 1:length(fitslist)){
#   test <- as_tibble(read.fitstab(file = paste("/p/stat/jgillett/3_1000_FITS_files/",fitslist[i],sep = ""))) %>%
#     mutate(wavelength = 10^loglam)
# 
#   res1 <- predict(model1,newdata = test)
#   res2 <- predict(model2,newdata = test)
#   cb_res[i] <- mean((test$flux - res1)^2)
#   sharp_res[i] <- mean((test$flux - res2)^2)
# })


print("The nearest for cb58 is:")
print( fitslist[which.min(cb_res)])

print("")
print("The nearest for sharp is:")
print( fitslist[which.min(sharp_res)])

# 4. Visualize the result

ny1 <- mutate(y1,label = "cb58")
cy1 <- get(x = paste("d",files[which.min(cb_res)],sep = "")) %>% 
  mutate(label = files[which.min(cb_res)] )
dsum1 <- bind_rows(ny1,cy1)

dsum1 %>% ggplot(mapping = aes(x = wavelength,y = flux, color = label)) + 
  geom_line() + labs(title  = "cb58 Result") + theme(plot.title = element_text(hjust = 0.5))

ny2 <- mutate(y2,label = "sharp")
cy2 <- get(x = paste("d",files[which.min(sharp_res)],sep = "")) %>% 
  mutate(label = files[which.min(sharp_res)] )
dsum2 <- bind_rows(ny2,cy2)

dsum2 %>% ggplot(mapping = aes(x = wavelength,y = flux, color = label)) + 
  geom_line() + labs(title  = "sharp Result") + theme(plot.title = element_text(hjust = 0.5))


Rprof(NULL)

## Answer to the Questions:

# (1) Since the target data has only flux and wavelength variables, I choose polynomial 
# regression to find the closest galaxy. For the target galaxy, fit a second order
# polynomial model where flux is the dependent one. For the 1000 files, use their 
# wavelength to predict the flux. Find the file whose predictions have the minimial 
# mean squared error.

# (2) The datafile is almost the same with the previous homework. So nothing tricky
# this time.

# (3) The most costful option is to filter the data by and_mask and others. By using
# Rdata instead of fits files, the runtime reduces about 320 seconds.
