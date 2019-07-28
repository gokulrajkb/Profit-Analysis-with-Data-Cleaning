############################################################################
############################################################################

#From,

#      Gokul Kaisaravalli Bhojraj
#      Id: 80789
#      MARKONDA YESWANTH SURYA ACHYUT
#      Id:80594
#      
#      Business Intelligence

############################################################################
############################################################################

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

###############################################################

###################################################

library(ggplot2)
library(gridExtra)

# unzipping
unziped_files<-unzip("C:/Users/Gokul/Desktop/BI Lab 3/Data.zip")

#sorting the files
files<-NULL
for(i in 1:length(unziped_files))
{
  files<-append(files,(substr(unziped_files[i],3,18)))
}
filenames<-sort(files)

# Reading the files and assigning it to a data frame
path_general<-"C:/Users/Gokul/Desktop/BI Lab 3/"
all_path<-NULL
for(i in 1:length(filenames))
{
  path<-paste(path_general,filenames[i],sep = "")
  all_path<-rbind(all_path,path)
  if(i==1)
  {
     data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
     quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
     year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
     Data1<-cbind(data,quater,year)
  } 
  if(i==2)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data2<-cbind(data,quater,year)
  } 
  if(i==3)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data3<-cbind(data,quater,year)
  } 
  if(i==4)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data4<-cbind(data,quater,year)
    Data_2006<-rbind(Data1,Data2,Data3,Data4)
  } 
  if(i==5)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data5<-cbind(data,quater,year)
  } 
  if(i==6)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data6<-cbind(data,quater,year)
  } 
  if(i==7)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data7<-cbind(data,quater,year)
  } 
  if(i==8)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data8<-cbind(data,quater,year)
    Data_2007<-rbind(Data5,Data6,Data7,Data8)
  } 
  if(i==9)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data9<-cbind(data,quater,year)
  } 
  if(i==10)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data10<-cbind(data,quater,year)
  } 
  if(i==11)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data11<-cbind(data,quater,year)
  } 
  if(i==12)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data12<-cbind(data,quater,year)
    Data_2008<-rbind(Data9,Data10,Data11,Data12)
  } 
  if(i==13)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data13<-cbind(data,quater,year)
  } 
  if(i==14)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data14<-cbind(data,quater,year)
  } 
  if(i==15)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data15<-cbind(data,quater,year)
  } 
  if(i==16)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data16<-cbind(data,quater,year)
    Data_2009<-rbind(Data13,Data14,Data15,Data16)
  } 
  if(i==17)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data17<-cbind(data,quater,year)
  } 
  if(i==18)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data18<-cbind(data,quater,year)
  } 
  if(i==19)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data19<-cbind(data,quater,year)
  } 
  if(i==20)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data20<-cbind(data,quater,year)
    Data_2010<-rbind(Data17,Data18,Data19,Data20)
  } 
  if(i==21)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data21<-cbind(data,quater,year)
  } 
  if(i==22)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data22<-cbind(data,quater,year)
  } 
  if(i==23)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data23<-cbind(data,quater,year)
  } 
  if(i==24)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data24<-cbind(data,quater,year)
    Data_2011<-rbind(Data21,Data22,Data23,Data24)
  } 
  if(i==25)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data25<-cbind(data,quater,year)
  } 
  if(i==26)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data26<-cbind(data,quater,year)
  } 
  if(i==27)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data27<-cbind(data,quater,year)
  } 
  if(i==28)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data28<-cbind(data,quater,year)
    Data_2012<-rbind(Data25,Data26,Data27,Data28)
  } 
  if(i==29)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data29<-cbind(data,quater,year)
  } 
  if(i==30)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data30<-cbind(data,quater,year)
  } 
  if(i==31)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data31<-cbind(data,quater,year)
  } 
  if(i==32)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data32<-cbind(data,quater,year)
    Data_2013<-rbind(Data29,Data30,Data31,Data32)
  } 
  if(i==33)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data33<-cbind(data,quater,year)
  } 
  if(i==34)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data34<-cbind(data,quater,year)
  } 
  if(i==35)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data35<-cbind(data,quater,year)
  } 
  if(i==36)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data36<-cbind(data,quater,year)
    Data_2014<-rbind(Data33,Data34,Data35,Data36)
  } 
  if(i==37)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data37<-cbind(data,quater,year)
  } 
  if(i==38)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data38<-cbind(data,quater,year)
  } 
  if(i==39)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data39<-cbind(data,quater,year)
  } 
  if(i==40)
  {
    data<-data.frame(read.delim2(path,quote = "",stringsAsFactors = T))
    quater<-rep(substr(filenames[i],6,7),1,length(data$Institutnr_fond))
    year<-rep(substr(filenames[i],1,4),1,length(data$Institutnr_fond))
    Data40<-cbind(data,quater,year)
    Data_2015<-rbind(Data37,Data38,Data39,Data40)
  } 
}

Data_All<-rbind(Data_2006,Data_2007,Data_2008,Data_2009,Data_2010,
                Data_2011,Data_2012,Data_2013,Data_2014,Data_2015)
Data_All

size<-length(Data_All$Institutnr_fondbolag)
size

############################################

# collecting the data of investments from Nordea in Sweden

year<-seq(2006,2015,1)

sweden_data<-subset(Data_All,Data_All$Land=='"SE"')

Nordea_sweden<-sweden_data[grep("NORDEA",sweden_data$Instrumentnamn),]

Nordea_sweden_2006_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2006" & Nordea_sweden$quater=="03")
Nordea_sweden_2006_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2006" & Nordea_sweden$quater=="06")
Nordea_sweden_2006_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2006" & Nordea_sweden$quater=="09")
Nordea_sweden_2006_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2006" & Nordea_sweden$quater=="12")

Nordea_sweden_2007_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2007"& Nordea_sweden$quater=="03")
Nordea_sweden_2007_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2007"& Nordea_sweden$quater=="06")
Nordea_sweden_2007_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2007"& Nordea_sweden$quater=="09")
Nordea_sweden_2007_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2007"& Nordea_sweden$quater=="12")

Nordea_sweden_2008_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2008"& Nordea_sweden$quater=="03")
Nordea_sweden_2008_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2008"& Nordea_sweden$quater=="06")
Nordea_sweden_2008_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2008"& Nordea_sweden$quater=="09")
Nordea_sweden_2008_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2008"& Nordea_sweden$quater=="12")

Nordea_sweden_2009_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2009"& Nordea_sweden$quater=="03")
Nordea_sweden_2009_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2009"& Nordea_sweden$quater=="06")
Nordea_sweden_2009_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2009"& Nordea_sweden$quater=="09")
Nordea_sweden_2009_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2009"& Nordea_sweden$quater=="12")

Nordea_sweden_2010_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2010"& Nordea_sweden$quater=="03")
Nordea_sweden_2010_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2010"& Nordea_sweden$quater=="06")
Nordea_sweden_2010_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2010"& Nordea_sweden$quater=="09")
Nordea_sweden_2010_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2010"& Nordea_sweden$quater=="12")

Nordea_sweden_2011_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2011"& Nordea_sweden$quater=="03")
Nordea_sweden_2011_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2011"& Nordea_sweden$quater=="06")
Nordea_sweden_2011_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2011"& Nordea_sweden$quater=="09")
Nordea_sweden_2011_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2011"& Nordea_sweden$quater=="12")

Nordea_sweden_2012_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2012"& Nordea_sweden$quater=="03")
Nordea_sweden_2012_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2012"& Nordea_sweden$quater=="06")
Nordea_sweden_2012_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2012"& Nordea_sweden$quater=="09")
Nordea_sweden_2012_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2012"& Nordea_sweden$quater=="12")

Nordea_sweden_2013_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2013"& Nordea_sweden$quater=="03")
Nordea_sweden_2013_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2013"& Nordea_sweden$quater=="06")
Nordea_sweden_2013_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2013"& Nordea_sweden$quater=="09")
Nordea_sweden_2013_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2013"& Nordea_sweden$quater=="12")

Nordea_sweden_2014_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2014"& Nordea_sweden$quater=="03")
Nordea_sweden_2014_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2014"& Nordea_sweden$quater=="06")
Nordea_sweden_2014_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2014"& Nordea_sweden$quater=="09")
Nordea_sweden_2014_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2014"& Nordea_sweden$quater=="12")

Nordea_sweden_2015_Q1<-subset(Nordea_sweden,Nordea_sweden$year=="2015"& Nordea_sweden$quater=="03")
Nordea_sweden_2015_Q2<-subset(Nordea_sweden,Nordea_sweden$year=="2015"& Nordea_sweden$quater=="06")
Nordea_sweden_2015_Q3<-subset(Nordea_sweden,Nordea_sweden$year=="2015"& Nordea_sweden$quater=="09")
Nordea_sweden_2015_Q4<-subset(Nordea_sweden,Nordea_sweden$year=="2015"& Nordea_sweden$quater=="12")


valq1<-c(sum(Nordea_sweden_2006_Q1$Marknadsvarde),sum(Nordea_sweden_2006_Q2$Marknadsvarde),
         sum(Nordea_sweden_2006_Q3$Marknadsvarde),sum(Nordea_sweden_2006_Q4$Marknadsvarde),
          sum(Nordea_sweden_2007_Q1$Marknadsvarde),sum(Nordea_sweden_2007_Q2$Marknadsvarde),
          sum(Nordea_sweden_2007_Q3$Marknadsvarde),sum(Nordea_sweden_2007_Q4$Marknadsvarde),
           sum(Nordea_sweden_2008_Q1$Marknadsvarde),sum(Nordea_sweden_2008_Q2$Marknadsvarde),
           sum(Nordea_sweden_2008_Q3$Marknadsvarde),sum(Nordea_sweden_2008_Q4$Marknadsvarde),
        sum(Nordea_sweden_2009_Q1$Marknadsvarde),sum(Nordea_sweden_2009_Q2$Marknadsvarde),
        sum(Nordea_sweden_2009_Q3$Marknadsvarde),sum(Nordea_sweden_2009_Q4$Marknadsvarde),
         sum(Nordea_sweden_2010_Q1$Marknadsvarde),sum(Nordea_sweden_2010_Q2$Marknadsvarde),
         sum(Nordea_sweden_2010_Q3$Marknadsvarde),sum(Nordea_sweden_2010_Q4$Marknadsvarde),
        sum(Nordea_sweden_2011_Q1$Marknadsvarde),sum(Nordea_sweden_2011_Q2$Marknadsvarde),
        sum(Nordea_sweden_2011_Q3$Marknadsvarde),sum(Nordea_sweden_2011_Q4$Marknadsvarde),
         sum(Nordea_sweden_2012_Q1$Marknadsvarde),sum(Nordea_sweden_2012_Q2$Marknadsvarde),
         sum(Nordea_sweden_2012_Q3$Marknadsvarde),sum(Nordea_sweden_2012_Q4$Marknadsvarde),
        sum(Nordea_sweden_2013_Q1$Marknadsvarde),sum(Nordea_sweden_2013_Q2$Marknadsvarde),
        sum(Nordea_sweden_2013_Q3$Marknadsvarde),sum(Nordea_sweden_2013_Q4$Marknadsvarde),
         sum(Nordea_sweden_2014_Q1$Marknadsvarde),sum(Nordea_sweden_2014_Q2$Marknadsvarde),
         sum(Nordea_sweden_2014_Q3$Marknadsvarde),sum(Nordea_sweden_2014_Q4$Marknadsvarde),
        sum(Nordea_sweden_2015_Q1$Marknadsvarde),sum(Nordea_sweden_2015_Q2$Marknadsvarde),
        sum(Nordea_sweden_2015_Q3$Marknadsvarde),sum(Nordea_sweden_2015_Q4$Marknadsvarde))

pro_nordea_sweden<-valq1/1000000000
pro_nordea_sweden

dd<-c(1,2,3,4)
q<-seq(1,40,1)
dd<-data.frame(q,pro_nordea_sweden)

baseplot <- ggplot(data = dd,aes(x = dd$q, y = dd$pro_nordea_sweden),col("blue"))
p1 <- baseplot + geom_line(color = "purple", size = 2) 
p1


###################################################################################
############ Without Sweden #######################################################################

# All Investments excluding Sweden ( Outside Sweden )

without_sweden<-subset(Data_All,Data_All$Land!='"SE"')
without_sweden<-subset(without_sweden,without_sweden$Marknadsvarde!="NA")

without_sweden_2006_Q1<-subset(without_sweden,without_sweden$year=="2006" & without_sweden$quater=="03")
without_sweden_2006_Q2<-subset(without_sweden,without_sweden$year=="2006" & without_sweden$quater=="06")
without_sweden_2006_Q3<-subset(without_sweden,without_sweden$year=="2006" & without_sweden$quater=="09")
without_sweden_2006_Q4<-subset(without_sweden,without_sweden$year=="2006" & without_sweden$quater=="12")

without_sweden_2007_Q1<-subset(without_sweden,without_sweden$year=="2007"& without_sweden$quater=="03")
without_sweden_2007_Q2<-subset(without_sweden,without_sweden$year=="2007"& without_sweden$quater=="06")
without_sweden_2007_Q3<-subset(without_sweden,without_sweden$year=="2007"& without_sweden$quater=="09")
without_sweden_2007_Q4<-subset(without_sweden,without_sweden$year=="2007"& without_sweden$quater=="12")

without_sweden_2008_Q1<-subset(without_sweden,without_sweden$year=="2008"& without_sweden$quater=="03")
without_sweden_2008_Q2<-subset(without_sweden,without_sweden$year=="2008"& without_sweden$quater=="06")
without_sweden_2008_Q3<-subset(without_sweden,without_sweden$year=="2008"& without_sweden$quater=="09")
without_sweden_2008_Q4<-subset(without_sweden,without_sweden$year=="2008"& without_sweden$quater=="12")

without_sweden_2009_Q1<-subset(without_sweden,without_sweden$year=="2009"& without_sweden$quater=="03")
without_sweden_2009_Q2<-subset(without_sweden,without_sweden$year=="2009"& without_sweden$quater=="06")
without_sweden_2009_Q3<-subset(without_sweden,without_sweden$year=="2009"& without_sweden$quater=="09")
without_sweden_2009_Q4<-subset(without_sweden,without_sweden$year=="2009"& without_sweden$quater=="12")

without_sweden_2010_Q1<-subset(without_sweden,without_sweden$year=="2010"& without_sweden$quater=="03")
without_sweden_2010_Q2<-subset(without_sweden,without_sweden$year=="2010"& without_sweden$quater=="06")
without_sweden_2010_Q3<-subset(without_sweden,without_sweden$year=="2010"& without_sweden$quater=="09")
without_sweden_2010_Q4<-subset(without_sweden,without_sweden$year=="2010"& without_sweden$quater=="12")

without_sweden_2011_Q1<-subset(without_sweden,without_sweden$year=="2011"& without_sweden$quater=="03")
without_sweden_2011_Q2<-subset(without_sweden,without_sweden$year=="2011"& without_sweden$quater=="06")
without_sweden_2011_Q3<-subset(without_sweden,without_sweden$year=="2011"& without_sweden$quater=="09")
without_sweden_2011_Q4<-subset(without_sweden,without_sweden$year=="2011"& without_sweden$quater=="12")

without_sweden_2012_Q1<-subset(without_sweden,without_sweden$year=="2012"& without_sweden$quater=="03")
without_sweden_2012_Q2<-subset(without_sweden,without_sweden$year=="2012"& without_sweden$quater=="06")
without_sweden_2012_Q3<-subset(without_sweden,without_sweden$year=="2012"& without_sweden$quater=="09")
without_sweden_2012_Q4<-subset(without_sweden,without_sweden$year=="2012"& without_sweden$quater=="12")

without_sweden_2013_Q1<-subset(without_sweden,without_sweden$year=="2013"& without_sweden$quater=="03")
without_sweden_2013_Q2<-subset(without_sweden,without_sweden$year=="2013"& without_sweden$quater=="06")
without_sweden_2013_Q3<-subset(without_sweden,without_sweden$year=="2013"& without_sweden$quater=="09")
without_sweden_2013_Q4<-subset(without_sweden,without_sweden$year=="2013"& without_sweden$quater=="12")

without_sweden_2014_Q1<-subset(without_sweden,without_sweden$year=="2014"& without_sweden$quater=="03")
without_sweden_2014_Q2<-subset(without_sweden,without_sweden$year=="2014"& without_sweden$quater=="06")
without_sweden_2014_Q3<-subset(without_sweden,without_sweden$year=="2014"& without_sweden$quater=="09")
without_sweden_2014_Q4<-subset(without_sweden,without_sweden$year=="2014"& without_sweden$quater=="12")

without_sweden_2015_Q1<-subset(without_sweden,without_sweden$year=="2015"& without_sweden$quater=="03")
without_sweden_2015_Q2<-subset(without_sweden,without_sweden$year=="2015"& without_sweden$quater=="06")
without_sweden_2015_Q3<-subset(without_sweden,without_sweden$year=="2015"& without_sweden$quater=="09")
without_sweden_2015_Q4<-subset(without_sweden,without_sweden$year=="2015"& without_sweden$quater=="12")


val1q1<-c(sum(without_sweden_2006_Q1$Marknadsvarde),sum(without_sweden_2006_Q2$Marknadsvarde),
          sum(without_sweden_2006_Q3$Marknadsvarde),sum(without_sweden_2006_Q4$Marknadsvarde),
             sum(without_sweden_2007_Q1$Marknadsvarde),sum(without_sweden_2007_Q2$Marknadsvarde),
             sum(without_sweden_2007_Q3$Marknadsvarde),sum(without_sweden_2007_Q4$Marknadsvarde),
         sum(without_sweden_2008_Q1$Marknadsvarde),sum(without_sweden_2008_Q2$Marknadsvarde),
         sum(without_sweden_2008_Q3$Marknadsvarde),sum(without_sweden_2008_Q4$Marknadsvarde),
              sum(without_sweden_2009_Q1$Marknadsvarde),sum(without_sweden_2009_Q2$Marknadsvarde),
              sum(without_sweden_2009_Q3$Marknadsvarde),sum(without_sweden_2009_Q4$Marknadsvarde),
         sum(without_sweden_2010_Q1$Marknadsvarde),sum(without_sweden_2010_Q2$Marknadsvarde),
         sum(without_sweden_2010_Q3$Marknadsvarde),sum(without_sweden_2010_Q4$Marknadsvarde),
              sum(without_sweden_2011_Q1$Marknadsvarde),sum(without_sweden_2011_Q2$Marknadsvarde),
              sum(without_sweden_2011_Q3$Marknadsvarde),sum(without_sweden_2011_Q4$Marknadsvarde),
         sum(without_sweden_2012_Q1$Marknadsvarde),sum(without_sweden_2012_Q2$Marknadsvarde),
         sum(without_sweden_2012_Q3$Marknadsvarde),sum(without_sweden_2012_Q4$Marknadsvarde),
              sum(without_sweden_2013_Q1$Marknadsvarde),sum(without_sweden_2013_Q2$Marknadsvarde),
              sum(without_sweden_2013_Q3$Marknadsvarde),sum(without_sweden_2013_Q4$Marknadsvarde),
         sum(without_sweden_2014_Q1$Marknadsvarde),sum(without_sweden_2014_Q2$Marknadsvarde),
         sum(without_sweden_2014_Q3$Marknadsvarde),sum(without_sweden_2014_Q4$Marknadsvarde),
              sum(without_sweden_2015_Q1$Marknadsvarde),sum(without_sweden_2015_Q2$Marknadsvarde),
              sum(without_sweden_2015_Q3$Marknadsvarde),sum(without_sweden_2015_Q4$Marknadsvarde))

pro_No_sweden_all<-val1q1/1000000000
pro_No_sweden_all

q<-seq(1,40,1)
dd<-data.frame(q,pro_No_sweden_all)

baseplot <- ggplot(data = dd,aes(x = dd$q, y = dd$pro_No_sweden_all))
p2 <- baseplot + geom_line(color = "green", size = 2) 
p2



###############

# All investments including Sweden and rest of the world

All_data<-Data_All
All_data<-subset(All_data,All_data$Marknadsvarde!="NA")

All_data_2006_Q1<-subset(All_data,All_data$year=="2006" & All_data$quater=="03")
All_data_2006_Q2<-subset(All_data,All_data$year=="2006" & All_data$quater=="06")
All_data_2006_Q3<-subset(All_data,All_data$year=="2006" & All_data$quater=="09")
All_data_2006_Q4<-subset(All_data,All_data$year=="2006" & All_data$quater=="12")

All_data_2007_Q1<-subset(All_data,All_data$year=="2007"& All_data$quater=="03")
All_data_2007_Q2<-subset(All_data,All_data$year=="2007"& All_data$quater=="06")
All_data_2007_Q3<-subset(All_data,All_data$year=="2007"& All_data$quater=="09")
All_data_2007_Q4<-subset(All_data,All_data$year=="2007"& All_data$quater=="12")

All_data_2008_Q1<-subset(All_data,All_data$year=="2008"& All_data$quater=="03")
All_data_2008_Q2<-subset(All_data,All_data$year=="2008"& All_data$quater=="06")
All_data_2008_Q3<-subset(All_data,All_data$year=="2008"& All_data$quater=="09")
All_data_2008_Q4<-subset(All_data,All_data$year=="2008"& All_data$quater=="12")

All_data_2009_Q1<-subset(All_data,All_data$year=="2009"& All_data$quater=="03")
All_data_2009_Q2<-subset(All_data,All_data$year=="2009"& All_data$quater=="06")
All_data_2009_Q3<-subset(All_data,All_data$year=="2009"& All_data$quater=="09")
All_data_2009_Q4<-subset(All_data,All_data$year=="2009"& All_data$quater=="12")

All_data_2010_Q1<-subset(All_data,All_data$year=="2010"& All_data$quater=="03")
All_data_2010_Q2<-subset(All_data,All_data$year=="2010"& All_data$quater=="06")
All_data_2010_Q3<-subset(All_data,All_data$year=="2010"& All_data$quater=="09")
All_data_2010_Q4<-subset(All_data,All_data$year=="2010"& All_data$quater=="12")

All_data_2011_Q1<-subset(All_data,All_data$year=="2011"& All_data$quater=="03")
All_data_2011_Q2<-subset(All_data,All_data$year=="2011"& All_data$quater=="06")
All_data_2011_Q3<-subset(All_data,All_data$year=="2011"& All_data$quater=="09")
All_data_2011_Q4<-subset(All_data,All_data$year=="2011"& All_data$quater=="12")

All_data_2012_Q1<-subset(All_data,All_data$year=="2012"& All_data$quater=="03")
All_data_2012_Q2<-subset(All_data,All_data$year=="2012"& All_data$quater=="06")
All_data_2012_Q3<-subset(All_data,All_data$year=="2012"& All_data$quater=="09")
All_data_2012_Q4<-subset(All_data,All_data$year=="2012"& All_data$quater=="12")

All_data_2013_Q1<-subset(All_data,All_data$year=="2013"& All_data$quater=="03")
All_data_2013_Q2<-subset(All_data,All_data$year=="2013"& All_data$quater=="06")
All_data_2013_Q3<-subset(All_data,All_data$year=="2013"& All_data$quater=="09")
All_data_2013_Q4<-subset(All_data,All_data$year=="2013"& All_data$quater=="12")

All_data_2014_Q1<-subset(All_data,All_data$year=="2014"& All_data$quater=="03")
All_data_2014_Q2<-subset(All_data,All_data$year=="2014"& All_data$quater=="06")
All_data_2014_Q3<-subset(All_data,All_data$year=="2014"& All_data$quater=="09")
All_data_2014_Q4<-subset(All_data,All_data$year=="2014"& All_data$quater=="12")

All_data_2015_Q1<-subset(All_data,All_data$year=="2015"& All_data$quater=="03")
All_data_2015_Q2<-subset(All_data,All_data$year=="2015"& All_data$quater=="06")
All_data_2015_Q3<-subset(All_data,All_data$year=="2015"& All_data$quater=="09")
All_data_2015_Q4<-subset(All_data,All_data$year=="2015"& All_data$quater=="12")


val11q1<-c(sum(All_data_2006_Q1$Marknadsvarde),sum(All_data_2006_Q2$Marknadsvarde),
          sum(All_data_2006_Q3$Marknadsvarde),sum(All_data_2006_Q4$Marknadsvarde),
          sum(All_data_2007_Q1$Marknadsvarde),sum(All_data_2007_Q2$Marknadsvarde),
          sum(All_data_2007_Q3$Marknadsvarde),sum(All_data_2007_Q4$Marknadsvarde),
          sum(All_data_2008_Q1$Marknadsvarde),sum(All_data_2008_Q2$Marknadsvarde),
          sum(All_data_2008_Q3$Marknadsvarde),sum(All_data_2008_Q4$Marknadsvarde),
          sum(All_data_2009_Q1$Marknadsvarde),sum(All_data_2009_Q2$Marknadsvarde),
          sum(All_data_2009_Q3$Marknadsvarde),sum(All_data_2009_Q4$Marknadsvarde),
          sum(All_data_2010_Q1$Marknadsvarde),sum(All_data_2010_Q2$Marknadsvarde),
          sum(All_data_2010_Q3$Marknadsvarde),sum(All_data_2010_Q4$Marknadsvarde),
          sum(All_data_2011_Q1$Marknadsvarde),sum(All_data_2011_Q2$Marknadsvarde),
          sum(All_data_2011_Q3$Marknadsvarde),sum(All_data_2011_Q4$Marknadsvarde),
          sum(All_data_2012_Q1$Marknadsvarde),sum(All_data_2012_Q2$Marknadsvarde),
          sum(All_data_2012_Q3$Marknadsvarde),sum(All_data_2012_Q4$Marknadsvarde),
          sum(All_data_2013_Q1$Marknadsvarde),sum(All_data_2013_Q2$Marknadsvarde),
          sum(All_data_2013_Q3$Marknadsvarde),sum(All_data_2013_Q4$Marknadsvarde),
          sum(All_data_2014_Q1$Marknadsvarde),sum(All_data_2014_Q2$Marknadsvarde),
          sum(All_data_2014_Q3$Marknadsvarde),sum(All_data_2014_Q4$Marknadsvarde),
          sum(All_data_2015_Q1$Marknadsvarde),sum(All_data_2015_Q2$Marknadsvarde),
          sum(All_data_2015_Q3$Marknadsvarde),sum(All_data_2015_Q4$Marknadsvarde))

pro_All_data<-val11q1/1000000000
pro_All_data


dd<-c(1,2,3,4)
q<-seq(1,40,1)
dd<-data.frame(q,pro_All_data)

baseplot <- ggplot(data = dd,aes(x = dd$q, y = dd$pro_All_data))
p3 <- baseplot + geom_line(color = "red", size = 2) 
p3

######################################################################################

pro_nordea_sweden
pro_No_sweden_all
pro_All_data

# Calculating percentage by dividing entire investments (all over the world) 
# over investments excluding Sweden

pro_ratio_other_vs_sweden<-pro_All_data/pro_No_sweden_all
pro_ratio_other_vs_sweden

################# Final ##########################

year<-c(2006.30, 2006.60,2006.90, 2006.12, 2007.30, 2007.60, 2007.90, 2007.12, 2008.30, 2008.60, 2008.90, 2008.12, 2009.30,
 2009.60, 2009.90, 2009.12, 2010.30, 2010.60, 2010.90, 2010.12, 2011.30, 2011.60, 2011.90, 2011.12, 2012.30, 2012.60,
2012.90, 2012.12, 2013.30, 2013.60, 2013.90, 2013.12, 2014.30, 2014.60, 2014.90, 2014.12, 2015.30, 2015.60, 2015.90, 2015.12)

dd<-data.frame(year,pro_nordea_sweden,pro_ratio_other_vs_sweden*10)

value_in_Billion_and_Percentage<- dd$pro_nordea_sweden
Years<-dd$year
final_graph_prep<-ggplot(data=dd, aes(Years)) + 
  geom_line(aes(y = value_in_Billion_and_Percentage, colour = "Nordea"),color = "purple", size = 2) + 
  geom_line(aes(y = dd$pro_ratio_other_vs_sweden, colour = "Ratio"),color = "green", size = 2)+
  ylim(1,50)

final_graph_prep

###############################################