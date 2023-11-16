# File:  R01_RStudio.R
# Course: R01: R: An introduction
# Chapter 2: Setting up
# Seccion: 2: Rstudio
#Author: Barton Paulson

#LOAD DATA ####################################################

library(datasets) # Load built-in dataset

# SUMARIZE DATA ###############################################

head(iris)        # Show the firts six lines of iris data
summary(iris)     # Summary statistics for iris data
plot(iris)        # scatterplot matrix for iris data

# CLEAN UP ################################################

# Clean package 

detach("package:datasets", unload = TRUE) #for base

# Clear plots

dev.off() #But only if there IS a plot

# Clear console

cat("\014") # ctrl+L

detach("package:packages", unload = TRUE) #for base


# Plot data with PLOT

?plot   # help for plot()
plot(iris$Species)        # Categorical variable
plot(iris$Petal.Length)   # Quiantitative variable
plot(iris$Species, iris$Petal.Width)   # Cat x quant
plot(iris)                # Entire data frame
plot(iris$Petal.Length, iris$Petal.Width)   # Quant pair


# Plot with options

plot(iris$Petal.Length, iris$Petal.Width,
     # col = "#cc0000", # Hex code for red
     pch = 19, # use solid circle for points
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

# Plot formulas with plot() #######################################

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)


# Plot formulas with options ############################################

plot(dnorm, -3, +3,
     col = "#cc0001",
     lwd = 5,
     main = "Standar Nromal Distribution",
     xlab = "z-scores",
     ylab = "Density")
warnings()

plot(dnorm, -3, +3,
     col = "#cc0001",
     lwd = 5,
     main = "Standar Normal Distribution",
     xlab = "z-scores",
     ylab = "Density")
?colors

detach("package:datasets", unload = TRUE) #for base

library(datasets) # Load built-in dataset

?mtcars
head(mtcars)

# Bar charts ##############################################################

barplot(mtcars$cyl)    # Doesn't work

# Need a table with frecuencies for each category ###########################
cylinders <- table(mtcars$cyl)  # Create table
barplot(cylinders)      # Bar chart
plot(cylinders)         # Default X-Y plot (lines)

rm(list = ls())


# Histograms ########################################################

?iris
head(iris)

# Basic histograms   ###############################################

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# Put graphs in 3 rows and 1 column
par(mfrow = c(3, 1))

# Histograms for each species using options ############################

hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "#cc0001")
 
par(mfrow = c(1, 1))

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for versicolor",
     xlab = "",
     col = "purple") 

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for virginica",
     xlab = "",
     col = "blue")

?mtcars
head(mtcars)


# PLOTS     ################################################################

# Good to firts check univariate distribuition

hist(mtcars$wt)
hist(mtcars$mpg)

# Basic for X-Y plot for two quantitative variables

plot(mtcars$wt, mtcars$mpg)

# Add some option

plot(mtcars$wt, mtcars$mpg,
     pch = 19,       # Solid circle
     cex = 1.5,      # Make 150% size
     col = "#cc0000",  # Red
     main = "MPG as a function of Weigth of Cars",
     xlab = "Weigth (in 1000 pounds)", 
     ylab = "MPG")
 

# Overlaying plots ###################################

# Annual Canadian Lynx trappings 1821 - 1934
?lynx
head(lynx)

# HISTOGRAMS ####################################################

# Default 
hist(lynx)

# Add some options

hist(lynx,
     breaks = 14,       # "Suggests" 14 bins)
     freq = FALSE,      # Axix shows density, not freq
     col = "thistle1",  # Color for Histogram
     main = paste("Histogram of Annual Canandian Lynx","Trapping, 1821 - 1934"), 
     xlab = "Number of Lynx Trapped")

# Add a normal distribution     

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",    # Color of curve
      lwd = 2,             # Line width of 2 pixels
      add = TRUE)          #Superimpose on previus graph

#Add two kernel density stimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "Purple", lwd = 2)

#Add a rug plot

rug(lynx, lwd = 2, col = "gray")

# SUMMARY #########################################

library(datasets) # Load built-in dataset

head(iris)

summary(iris$Species)          # Categorical variable
summary(iris$Sepal.Length)     # Quantitative variable  
summary(iris)                  # Entire iris data frame


# DESCRIBE ################################################

describe(iris)

# INTALLING PACKAGE ########################################

install.packages("pacman")



require(shiny)
require(ggvis)
































