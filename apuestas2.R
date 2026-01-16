library(tidyverse)

summary(betting)
str(betting)
ciudad <- as.factor(betting$NAME)
totalcas <- table(betting$SALONES)
glimpse(betting)
View(totalcas)
View(ciudad)

madrid <- read_csv("betting2_Madrid.csv")
totalcas <- table(madrid$SALONES)
View(totalcas)
totalcasas <- sum(betting$SALONES, na.rm = TRUE)
solocasa <- madrid[madrid$SALONES != 0, ]

solocasa |> mutate(
  SALONES = as.factor(SALONES))
 
pobla <- solocasa |>
  group_by(SALONES) |>
  summarise(POPULATION = sum(POPULATION), .groups = "drop")




                        
                        
                        