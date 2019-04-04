library(MASS)
library(dplyr)

data(airquality)


meanOzone <- mean(airquality$Ozone, na.rm = TRUE)
aq <- airquality %>% mutate(Ozone = ifelse(NA,meanOzone,Ozone))

library(mice)                            
aq2 <- airquality
md.pattern(aq2)

library(VIM)
mp <- aggr(aq2, col=c('navyblue','yellow'),
          numbers=TRUE, sortVars=TRUE, 
          labels=names(aq2), cex.axis=.7,
          gap=3, ylab=c('Missing data','Pattern'))

# 72.5% of our data has no NAs
# 22.9% of Ozone is NA
# 3% of Solar.R is NA

im_aq <- mice(aq2, m=5, maxit=50,method='pmm', seed=500)
summary(im_aq)
head(im_aq$imp$Ozone)

completedData <- complete(im_aq,1)
head(completedData)
head(aq2)
