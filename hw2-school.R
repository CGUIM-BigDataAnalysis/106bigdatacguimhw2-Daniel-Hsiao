library(readr)

StuSchool103 <- read_csv("C:/Users/Daniel/Downloads/103_ab103_S.csv")
StuSchool104 <- read_csv("C:/Users/Daniel/Downloads/104_ab104_S.csv")
StuSchool105 <- read_csv("C:/Users/Daniel/Downloads/105_ab105_S.csv")
StuSchool106 <- read_csv("C:/Users/Daniel/Downloads/106_ab105_S.csv")

StuSchool103 <-StuSchool103 %>% mutate_all(funs(gsub("…","0",.)))
StuSchool104 <-StuSchool104 %>% mutate_all(funs(gsub("…","0",.)))
StuSchool105 <-StuSchool105 %>% mutate_all(funs(gsub("…","0",.)))
StuSchool106 <-StuSchool106 %>% mutate_all(funs(gsub("…","0",.)))

StuSchool103$`學位生-正式修讀學位外國生`<-as.numeric(StuSchool103$`學位生-正式修讀學位外國生`)
StuSchool103$`學位生-僑生(含港澳)`<-as.numeric(StuSchool103$`學位生-僑生(含港澳)`)
StuSchool103$`學位生-正式修讀學位陸生`<-as.numeric(StuSchool103$`學位生-正式修讀學位陸生`)
StuSchool103$`非學位生-外國交換生`<-as.numeric(StuSchool103$`非學位生-外國交換生`)
StuSchool103$`非學位生-外國短期研習及個人選讀`<-as.numeric(StuSchool103$`非學位生-外國短期研習及個人選讀`)
StuSchool103$`非學位生-大專附設華語文中心學生`<-as.numeric(StuSchool103$`非學位生-大專附設華語文中心學生`)
StuSchool103$`非學位生-大陸研修生`<-as.numeric(StuSchool103$`非學位生-大陸研修生`)
StuSchool103$`非學位生-海青班`<-as.numeric(StuSchool103$`非學位生-海青班`)
StuSchool103$境外專班<-as.numeric(StuSchool103$境外專班)

StuSchool104$`學位生-正式修讀學位外國生`<-as.numeric(StuSchool104$`學位生-正式修讀學位外國生`)
StuSchool104$`學位生-僑生(含港澳)`<-as.numeric(StuSchool104$`學位生-僑生(含港澳)`)
StuSchool104$`學位生-正式修讀學位陸生`<-as.numeric(StuSchool104$`學位生-正式修讀學位陸生`)
StuSchool104$`非學位生-外國交換生`<-as.numeric(StuSchool104$`非學位生-外國交換生`)
StuSchool104$`非學位生-外國短期研習及個人選讀`<-as.numeric(StuSchool104$`非學位生-外國短期研習及個人選讀`)
StuSchool104$`非學位生-大專附設華語文中心學生`<-as.numeric(StuSchool104$`非學位生-大專附設華語文中心學生`)
StuSchool104$`非學位生-大陸研修生`<-as.numeric(StuSchool104$`非學位生-大陸研修生`)
StuSchool104$`非學位生-海青班`<-as.numeric(StuSchool104$`非學位生-海青班`)
StuSchool104$境外專班<-as.numeric(StuSchool104$境外專班)

StuSchool105$學位生_正式修讀學位外國生<-as.numeric(StuSchool105$學位生_正式修讀學位外國生)
StuSchool105$`學位生_僑生(含港澳)`<-as.numeric(StuSchool105$`學位生_僑生(含港澳)`)
StuSchool105$學位生_正式修讀學位陸生<-as.numeric(StuSchool105$學位生_正式修讀學位陸生)
StuSchool105$非學位生_外國交換生<-as.numeric(StuSchool105$非學位生_外國交換生)
StuSchool105$非學位生_外國短期研習及個人選讀<-as.numeric(StuSchool105$非學位生_外國短期研習及個人選讀)
StuSchool105$非學位生_大專附設華語文中心學生<-as.numeric(StuSchool105$非學位生_大專附設華語文中心學生)
StuSchool105$非學位生_大陸研修生<-as.numeric(StuSchool105$非學位生_大陸研修生)
StuSchool105$非學位生_海青班<-as.numeric(StuSchool105$非學位生_海青班)
StuSchool105$境外專班<-as.numeric(StuSchool105$境外專班)

StuSchool106$學位生_正式修讀學位外國生<-as.numeric(StuSchool106$學位生_正式修讀學位外國生)
StuSchool106$`學位生_僑生(含港澳)`<-as.numeric(StuSchool106$`學位生_僑生(含港澳)`)
StuSchool106$學位生_正式修讀學位陸生<-as.numeric(StuSchool106$學位生_正式修讀學位陸生)
StuSchool106$非學位生_外國交換生<-as.numeric(StuSchool106$非學位生_外國交換生)
StuSchool106$非學位生_外國短期研習及個人選讀<-as.numeric(StuSchool106$非學位生_外國短期研習及個人選讀)
StuSchool106$非學位生_大專附設華語文中心學生<-as.numeric(StuSchool106$非學位生_大專附設華語文中心學生)
StuSchool106$非學位生_大陸研修生<-as.numeric(StuSchool106$非學位生_大陸研修生)
StuSchool106$非學位生_海青班<-as.numeric(StuSchool106$非學位生_海青班)
StuSchool106$境外專班<-as.numeric(StuSchool106$境外專班)

library(dplyr)
StuSchool103<-
  StuSchool103 %>% 
  mutate(StudentSum103=`學位生-正式修讀學位外國生` +
           `學位生-僑生(含港澳)` + `學位生-正式修讀學位陸生` +
           `非學位生-外國交換生` + `非學位生-外國短期研習及個人選讀` +
           `非學位生-大專附設華語文中心學生` + `非學位生-大陸研修生` +
           `非學位生-海青班` + 境外專班) %>% 
  select("學校名稱", StudentSum103)

StuSchool104<-
  StuSchool104 %>% 
  mutate(StudentSum104=`學位生-正式修讀學位外國生` +
           `學位生-僑生(含港澳)` + `學位生-正式修讀學位陸生` +
           `非學位生-外國交換生` + `非學位生-外國短期研習及個人選讀` +
           `非學位生-大專附設華語文中心學生` + `非學位生-大陸研修生` +
           `非學位生-海青班` + 境外專班) %>% 
  select("學校名稱", StudentSum104)

StuSchool105<-
  StuSchool105 %>% 
  mutate(StudentSum105=學位生_正式修讀學位外國生 +
           `學位生_僑生(含港澳)` + 學位生_正式修讀學位陸生 +
           非學位生_外國交換生 + 非學位生_外國短期研習及個人選讀 +
           非學位生_大專附設華語文中心學生 + 非學位生_大陸研修生 +
           非學位生_海青班 + 境外專班) %>% 
  select("學校名稱", StudentSum105)

StuSchool106<-
  StuSchool106 %>% 
  mutate(StudentSum106=學位生_正式修讀學位外國生 +
           `學位生_僑生(含港澳)` + 學位生_正式修讀學位陸生 +
           非學位生_外國交換生 + 非學位生_外國短期研習及個人選讀 +
           非學位生_大專附設華語文中心學生 + 非學位生_大陸研修生 +
           非學位生_海青班 + 境外專班) %>% 
  select("學校名稱", StudentSum106)

BySchool<-
  inner_join(StuSchool103,StuSchool104,by="學校名稱") %>%
  inner_join(StuSchool105,by="學校名稱") %>%
  inner_join(StuSchool106,by="學校名稱") %>%
  mutate(StudentSum = 
           StudentSum103 + StudentSum104 + 
           StudentSum105 + StudentSum106) %>%
  select("學校名稱", StudentSum) %>%
  arrange(desc(StudentSum))

BySchoolTOP10<-
   BySchool %>%
   head(10)




