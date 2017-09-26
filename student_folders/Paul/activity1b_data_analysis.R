# Regression analysis and plotting

## Preamble

# load libraries and clear environment
library(rmarkdown)

remove(list=ls())


# Step 1.  Load data
load("data/processed_data/rikz_data.Rdata")
head(rikz.data)

# Step 2. Regression
lm.out <- lm(rikz.data$Richness~rikz.data$NAP)
# alternatively:   lm.out <- lm(Richness~NAP, data=rikz.data)
summary(lm.out)


# Step 3. Plot results
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)








