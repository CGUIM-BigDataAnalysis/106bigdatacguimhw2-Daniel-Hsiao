#問題1
library(readr)
opendata106N0101 <- read_csv("C:/Users/Daniel/Downloads/opendata106N0101.csv")

library(ggplot2)
library(rgdal)
library(rgeos)
library(maptools) 
tw_new <- readShapeSpatial("C:/Users/Daniel/Downloads/mapdata201804300222/TOWN_MOI_1070330.shp") 

tw_new.df <- 
  fortify(tw_new, region = "TOWNID") 


mydata<-data.frame(CountyName=tw_new$COUNTYNAME,
                   TownName=tw_new$TOWNNAME,
                   id=tw_new$TOWNID,
                   pre=rnorm(length(tw_new$TOWNID)),
                   stringsAsFactors = F)

mydata$site_id<-paste0(mydata$CountyName,mydata$TownName)

mydata$CountyName<-
  iconv(mydata$CountyName,
        from="big5", to = "UTF-8")

middle.plot<-merge(tw_new.df,
                  mydata,by="id",all.x=T)

final.plot<-merge(middle.plot,
                  opendata106N0101,by="site_id",all.x=T)





head(final.plot,10)
head(mydata)
head(tw_new$Town_ID)



#問題2
library(readr)
library(dplyr)
DataPOLIO <- read_csv("~/POLIO_Incidence.csv")
DataPOLIO <-
  DataPOLIO %>%
  mutate_all(funs(gsub("-","0",.)))

library(reshape2)
library(tidyr)
DataPOLIO.m<-gather(DataPOLIO,
                    key=State,value=Value,
                    ALABAMA:WYOMING)

DataPOLIO.m$Value<-as.numeric(DataPOLIO.m$Value)
  
DataPOLIO.m<-
  DataPOLIO.m%>%
   group_by(YEAR,State)%>%
   summarise(Year_Total=sum(Value,na.rm=T))

library(ggplot2)
ggplot

head(DataPOLIO.m,5)


#問題3  資料探勘

install.packages("mlbench")
library(mlbench)
data(BostonHousing)

glm(medv~crim+tax+dis+rm+age+chas,
    data=BostonHousing)

glm(medv~crim+tax+dis,
    data=BostonHousing)









