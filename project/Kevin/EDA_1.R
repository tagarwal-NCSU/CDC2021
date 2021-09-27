#Libraries 
library('Hmisc')
library("mgcv")
library("stats")
library('vcd')
library('car')
library('vcdExtra')
library('tidyr')
library('dplyr')
library('stringr')
library('caret')
library('InformationValue')
library('glmnet')
library("gamlss")
library('ggplot2')
library('forecast')
library('ROCR')
library('readxl')

setwd("/Users/kevin/Desktop/Carolina Data Challenge/Mobile App Usage Survey")
app_usage = read_excel("mobile_app_user_dataset_1.xlsx")
describe(app_usage)

View(app_usage)
describe(app_usage)

setwd("/Users/kevin/Desktop/Carolina Data Challenge/SVI")
SVI_2014 = read.csv("xn--CDCs_Social_Vulnerability_Index_(SVI)__2014_overall_SVI,_census_tract_level_-_Wake_County-7470duo.csv")

View(SVI_2014)


test = SVI_2014 %>% 
  group_by(COUNTY) %>% 
  summarise(COUNTY_E_MUNIT = sum(E_MUNIT),
            COUNTY_E_MOBILE = sum(E_MOBILE),
            COUNTY_E_CROWD = sum(E_CROWD),
            COUNTY_E_NOVEH = sum(E_NOVEH),
            COUNTY_E_GROUPQ = sum(E_GROUPQ))
View(test)





