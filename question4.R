library(readr)
library(dplyr)
Student_RPT_07 <- read_csv("C:/Users/Daniel/Downloads/Student_RPT_07.csv")

Student_RPT_07$學年度<-as.numeric(Student_RPT_07$學年度)
Student_RPT_07$本國學生出國進修交流人數<-as.numeric(Student_RPT_07$本國學生出國進修交流人數)

Student_RPT_07<-Student_RPT_07[complete.cases(Student_RPT_07),]
Student_RPT_07<-rename(Student_RPT_07,Country=`對方學校(機構)國別(地區)`)

DifferentCountrySum<-
  filter(Student_RPT_07,學年度>102)%>%
  select("學年度","學校名稱",Country,"本國學生出國進修交流人數")%>%
  group_by(Country)%>%
  summarise(StuSUM=sum(本國學生出國進修交流人數))%>%
  arrange(desc(StuSUM))

DifferentCountrySum<-
  DifferentCountrySum[!grepl("大陸地區",DifferentCountrySum$Country),]%>%
  head(10)
  
DifferentSchoolSum<-
  filter(Student_RPT_07,學年度>102)%>%
  select("學年度","學校名稱",Country,"本國學生出國進修交流人數")%>%
  group_by(學校名稱)%>%
  summarise(StuSUM=sum(本國學生出國進修交流人數))%>%
  arrange(desc(StuSUM))%>%
  head(10)
  

library(ggplot2) 

ggplot()+geom_bar(data=DifferentCountrySum,aes(x=Country,y=StuSUM),stat = "identity")


  str(ClearStuRPT)       
         
 




        