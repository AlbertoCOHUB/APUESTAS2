getwd() # saber directorio de trabajo 
setwd("C:/Users/alber/Documents/APUESTAS2") # ojo con la ruta / o \\

library(tidyverse)
library(dplyr)
library(swirlify)
library(palmerpenguins)
library(ggplot2)

str(betting)
glimpse(betting)
View(betting)
summary(betting)
head(betting)

# Número de individuos por especie 
ggplot(betting, aes(x = POPULATION)) +   
  geom_bar()   
