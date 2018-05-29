library(readr)

StuCountry103 <- read_csv("C:/Users/Daniel/Downloads/103_ab103_C.csv")
StuCountry104 <- read_csv("C:/Users/Daniel/Downloads/104_ab104_C.csv")
StuCountry105 <- read_csv("C:/Users/Daniel/Downloads/105_ab105_C.csv")
StuCountry106 <- read_csv("C:/Users/Daniel/Downloads/106_ab105_C.csv")


StuCountry103$`學位生-正式修讀學位外國生`<-as.numeric(StuCountry103$`學位生-正式修讀學位外國生`)
StuCountry103$`學位生-僑生(含港澳)`<-as.numeric(StuCountry103$`學位生-僑生(含港澳)`)
StuCountry103$`學位生-正式修讀學位陸生`<-as.numeric(StuCountry103$`學位生-正式修讀學位陸生`)
StuCountry103$`非學位生-外國交換生`<-as.numeric(StuCountry103$`非學位生-外國交換生`)
StuCountry103$`非學位生-外國短期研習及個人選讀`<-as.numeric(StuCountry103$`非學位生-外國短期研習及個人選讀`)
StuCountry103$`非學位生-大專附設華語文中心學生`<-as.numeric(StuCountry103$`非學位生-大專附設華語文中心學生`)
StuCountry103$`非學位生-大陸研修生`<-as.numeric(StuCountry103$`非學位生-大陸研修生`)
StuCountry103$`非學位生-海青班`<-as.numeric(StuCountry103$`非學位生-海青班`)
StuCountry103$境外專班<-as.numeric(StuCountry103$境外專班)


StuCountry104$`學位生-正式修讀學位外國生`<-as.numeric(StuCountry104$`學位生-正式修讀學位外國生`)
StuCountry104$`學位生-僑生(含港澳)`<-as.numeric(StuCountry104$`學位生-僑生(含港澳)`)
StuCountry104$`學位生-正式修讀學位陸生`<-as.numeric(StuCountry104$`學位生-正式修讀學位陸生`)
StuCountry104$`非學位生-外國交換生`<-as.numeric(StuCountry104$`非學位生-外國交換生`)
StuCountry104$`非學位生-外國短期研習及個人選讀`<-as.numeric(StuCountry104$`非學位生-外國短期研習及個人選讀`)
StuCountry104$`非學位生-大專附設華語文中心學生`<-as.numeric(StuCountry104$`非學位生-大專附設華語文中心學生`)
StuCountry104$`非學位生-大陸研修生`<-as.numeric(StuCountry104$`非學位生-大陸研修生`)
StuCountry104$`非學位生-海青班`<-as.numeric(StuCountry104$`非學位生-海青班`)
StuCountry104$境外專班<-as.numeric(StuCountry104$境外專班)


StuCountry105$學位生_正式修讀學位外國生<-as.numeric(StuCountry105$學位生_正式修讀學位外國生)
StuCountry105$`學位生_僑生(含港澳)`<-as.numeric(StuCountry105$`學位生_僑生(含港澳)`)
StuCountry105$學位生_正式修讀學位陸生<-as.numeric(StuCountry105$學位生_正式修讀學位陸生)
StuCountry105$非學位生_外國交換生<-as.numeric(StuCountry105$非學位生_外國交換生)
StuCountry105$非學位生_外國短期研習及個人選讀<-as.numeric(StuCountry105$非學位生_外國短期研習及個人選讀)
StuCountry105$非學位生_大專附設華語文中心學生<-as.numeric(StuCountry105$非學位生_大專附設華語文中心學生)
StuCountry105$非學位生_大陸研修生<-as.numeric(StuCountry105$非學位生_大陸研修生)
StuCountry105$非學位生_海青班<-as.numeric(StuCountry105$非學位生_海青班)
StuCountry105$境外專班<-as.numeric(StuCountry105$境外專班)


StuCountry106$學位生_正式修讀學位外國生<-as.numeric(StuCountry106$學位生_正式修讀學位外國生)
StuCountry106$`學位生_僑生(含港澳)`<-as.numeric(StuCountry106$`學位生_僑生(含港澳)`)
StuCountry106$學位生_正式修讀學位陸生<-as.numeric(StuCountry106$學位生_正式修讀學位陸生)
StuCountry106$非學位生_外國交換生<-as.numeric(StuCountry106$非學位生_外國交換生)
StuCountry106$非學位生_外國短期研習及個人選讀<-as.numeric(StuCountry106$非學位生_外國短期研習及個人選讀)
StuCountry106$非學位生_大專附設華語文中心學生<-as.numeric(StuCountry106$非學位生_大專附設華語文中心學生)
StuCountry106$非學位生_大陸研修生<-as.numeric(StuCountry106$非學位生_大陸研修生)
StuCountry106$非學位生_海青班<-as.numeric(StuCountry106$非學位生_海青班)
StuCountry106$境外專班<-as.numeric(StuCountry106$境外專班)



library(dplyr)
StuCountry103<-
              StuCountry103 %>% 
                mutate(StudentSum103=`學位生-正式修讀學位外國生` +
                         `學位生-僑生(含港澳)` + `學位生-正式修讀學位陸生` +
                         `非學位生-外國交換生` + `非學位生-外國短期研習及個人選讀` +
                         `非學位生-大專附設華語文中心學生` + `非學位生-大陸研修生` +
                         `非學位生-海青班` + 境外專班) %>% 
                select("國別", StudentSum103)
StuCountry104<-
              StuCountry104 %>% 
                mutate(StudentSum104=`學位生-正式修讀學位外國生` +
                         `學位生-僑生(含港澳)` + `學位生-正式修讀學位陸生` +
                         `非學位生-外國交換生` + `非學位生-外國短期研習及個人選讀` +
                         `非學位生-大專附設華語文中心學生` + `非學位生-大陸研修生` +
                         `非學位生-海青班` + 境外專班) %>% 
                select("國別", StudentSum104)
StuCountry105<-
              StuCountry105 %>% 
                mutate(StudentSum105=學位生_正式修讀學位外國生 +
                         `學位生_僑生(含港澳)` + 學位生_正式修讀學位陸生 +
                         非學位生_外國交換生 + 非學位生_外國短期研習及個人選讀 +
                         非學位生_大專附設華語文中心學生 + 非學位生_大陸研修生 +
                         非學位生_海青班 + 境外專班) %>% 
                select("國別", StudentSum105)
StuCountry106<-
              StuCountry106 %>% 
                mutate(StudentSum106=學位生_正式修讀學位外國生 +
                         `學位生_僑生(含港澳)` + 學位生_正式修讀學位陸生 +
                         非學位生_外國交換生 + 非學位生_外國短期研習及個人選讀 +
                         非學位生_大專附設華語文中心學生 + 非學位生_大陸研修生 +
                         非學位生_海青班 + 境外專班) %>% 
                select("洲別","國別", StudentSum106)


ByCountry<-
          inner_join(StuCountry106,StuCountry105,by="國別") %>%
          inner_join(StuCountry104,by="國別") %>%
          inner_join(StuCountry103,by="國別")
ByCountry<-
          ByCountry %>%
            mutate(StudentSum = 
                     StudentSum103 + StudentSum104 + 
                     StudentSum105 + StudentSum106) %>%
            select("洲別","國別", StudentSum) %>%
            arrange(desc(StudentSum))
            
  
  
ByCountryTOP10<-
               ByCountry %>%
               head(10)

Others<- ByCountry[-c(1:10),] 

Others<-
        rbind(Others, 
              c("世界","其他",colSums(Others[,3]))  
              ) %>%
        tail(1)      

ForPlotBar<- 
            rbind(ByCountryTOP10,
                  Others )%>%
  select("國別",StudentSum)

ForPlotBar$StudentSum<-as.numeric(ForPlotBar$StudentSum)
ForPlotBar$國別<-as.factor(ForPlotBar$國別)

library(ggplot2) 

ggplot()+geom_bar(data=ForPlotBar,aes(x=國別,y=StudentSum),stat = "identity")

