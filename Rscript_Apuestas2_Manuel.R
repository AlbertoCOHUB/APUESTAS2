#### Análisis de BBDD sobre casas de apuestas para el trabajo final del curso de R de Alcalá 16/01
##Primer paso: Filtrar solo las de Madrid
betting |>
  filter(REGION == "Madrid")
betting2 <- filter (betting, REGION == "Madrid") |>
  mutate(
    SALONES = as.factor(SALONES)
  )
##Guardar base de datos en Github
write_csv(x = betting2, file = "betting2_Madrid.csv") 

## Diseño de Gráficos
ggplot(data = betting2, aes(x = SALONES, y = POP_DENS)) +
  geom_boxplot()

miplot1 <- ggplot(data = betting2, aes(x = SALONES, y = POP_DENS)) +
  geom_boxplot()

miplot2 <- ggplot(data = betting2, aes(x = SALONES, y = POP_DENS)) +
  geom_histogram()

miplot1 +
labs(
  title = "Cantidad de casas de apuestas según densidad poblacional de la ciudad de Madrid",
  subtitle = "Datos de las secciones censales de Madrid",
  x = "SALONES",
  y = "Densidad poblacional",
)