library("astro")
library("tidyverse")

# 1.Data Input
# data input
d206 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-0309-51994-0206.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0206")
d570 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-0297-51959-0570.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0570")
d132 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-0289-51990-0132.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0132")
d080 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-0385-51783-0080.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0080")
d403 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-0341-51690-0403.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0403")
d579 <- as_tibble(read.fitstab(file = "/p/stat/jgillett/1_6_FITS_files/spec-1353-53083-0579.fits")) %>% filter(and_mask == 0) %>% mutate(wavelength = 10^loglam, variance = 1/ivar,label = "d0579")

# Unite all data
dsum <- bind_rows(d132,d206,d080,d403,d570,d579) %>% select(label,flux,wavelength,variance,model)

# 2. Data Visualization
# Scatter Plot
dsum %>% ggplot(mapping = aes(x = wavelength,y = flux, color = label)) + 
  geom_line() + labs(title  = "Points Plot") + theme(plot.title = element_text(hjust = 0.5))

# Smooth Line Plot

dsum %>% ggplot(mapping = aes(x = wavelength,y = flux, color = label)) + 
  geom_smooth(method = "loess") + labs(title  = "Smooth Plot") + 
  theme(plot.title = element_text(hjust = 0.5))

# 3. Model

# My idea is to fit a second - order polynomial regression model of the 0579 data. 
# In the model, wavelength is the independent variable as the flux is the dependent one.
# 
# Then, use this model to predict the flux value of the other 5 datasets. 
# Calculate the mean absolute prediction error of each other dataset. 
# 
# Select the galaxy with the lowest absolute error as the nearest one.

res <- rep(0,6)
names(res) <- unique(dsum$label)
model <- lm(flux~ wavelength + I(wavelength^2),data = d579)
res["d0579"] <- mean(abs(model$fitted.values-d579$flux))
res["d0132"] <- mean(abs(predict(model,newdata = d132)-d132$flux))
res["d0206"] <- mean(abs(predict(model,newdata = d206)-d206$flux))
res["d0403"] <- mean(abs(predict(model,newdata = d403)-d403$flux))
res["d0570"] <- mean(abs(predict(model,newdata = d570)-d570$flux))
res["d0080"] <- mean(abs(predict(model,newdata = d080)-d080$flux))

print(sort(res,decreasing = F))
print(names(sort(res,decreasing = F)[-1])[1])

# So that, 0206 is the nearest to the Lyman-break galaxies


# 4.Difficulties

# The six datasets have different number of samples. It leads to some diffculities to plot and analysis.
# Here, I use the dplyr and ggplot packages to solve the problem.

