library(readr)

TaiwanToWorld105 <- read_csv("C:/Users/Daniel/Downloads/105Taiwan to World.csv")

TaiwanToWorld105 <- 
  TaiwanToWorld105[,1:3]%>%
  arrange(desc(總人數))
  
T_to_W_top10 <-
  TaiwanToWorld105 %>%
  head(10)



library(choroplethr)
library(choroplethrMaps)
library(rgdal)
library(ggplot2)
library(ggmap)

data(country.names)
?country.names
