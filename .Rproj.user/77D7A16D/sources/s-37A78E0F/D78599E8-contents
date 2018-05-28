library(readr)
library(dplyr)
Student_RPT_07 <- read_csv("C:/Users/Daniel/Downloads/Student_RPT_07.csv")

Student_RPT_07$學年度<-as.numeric(Student_RPT_07$學年度)
Student_RPT_07$本國學生出國進修交流人數<-as.numeric(Student_RPT_07$本國學生出國進修交流人數)

Student_RPT_07<-Student_RPT_07[complete.cases(Student_RPT_07),]

Student_RPT_07<-
  filter(Student_RPT_07,學年度>102)%>%
  select("學年度","學校名稱","對方學校(機構)國別(地區)","本國學生出國進修交流人數")%>%
  group_by("對方學校(機構)國別(地區)")
  

         
         
 




        