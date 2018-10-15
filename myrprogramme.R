# This is my first program
#c(1:10)->a
#a^2->b
#a^3->b
#a+b->c
setwd("~/ep624/nss59")
read.table("r59v1l01.csv",sep=",",header=T)->level1
read.table("r59v1l02.csv",sep=",",header=T)->level2
read.table("r59v1l03.csv",sep=",",header=T)->level3
read.table("r59v1l04.csv",sep=",",header=T)->level4
library(data.table)
#require(data.table)

fread("r59v1l01.csv",sep=",",header=T)->level1
fread("r59v1l02.csv",sep=",",header=T)->level2
fread("r59v1l03.csv",sep=",",header=T)->level3
fread("r59v1l04.csv",sep=",",header=T)->level4

ifelse(level1$nsc>level1$nss,level1$mult/200,level1$mult/100)->level1$weight
ifelse(level2$nsc>level2$nss,level2$mult/200,level2$mult/100)->level2$weight
ifelse(level2$l02f9==1,"ST",
ifelse(level2$l02f9==2,"SC","O"))->level2$socgrp2

level2[socgrp2=="O"|socgrp2=="ST",.(num=sum(weight),sample=length(weight)),.(socgrp2,l02f8)]


read.table("r59v1l05.csv",sep=",",header=T)->level5




as.data.table(level5)->level5

fread("r59v1l05.csv",sep=",",header=T)->level5

level5

read.table("r59v1l06.csv",sep=",",header=T)->level6
read.table("r59v1l07.csv",sep=",",header=T)->level7

ifelse(level2$l02f9!=1|level2$l02f9!=2,"O",level2$l02f9)->level2$socgrp2
as.factor(level2$socgrp2)->level2$socgrp2
summary(level2$socgrp2)


rbind
cbind

merge(x,y,by=c(),all=F)

rbind(a,b)->c
level3[,c(1:16,19:28)]->level3n
merge(level2,level3n)->t
merge(level2,level3,by=c("f2","f13","f14","f16"))->t1

names(level3)[names(level3)=="f2"]<-"lf2"

merge(level2,level3,by.x=c("f2","f13","f14","f16"),by.y=c("lf2","f13","f14","f16"))->t1

