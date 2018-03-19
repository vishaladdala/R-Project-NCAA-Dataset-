#PART 1: DATA WRANGLING.

RegularSeasonDetailedResults <- read.csv("~/Desktop/R MidProject/RegularSeasonDetailedResults.csv")

myData = RegularSeasonDetailedResults

#separating out the winners and losers into separate datasets
wdata = myData[,c(1,2,3,4,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21)]
ldata = myData[,c(1,2,5,6,22,23,24,25,26,27,28,29,30,31,32,33,34)]


#renaming the attacking stats to be common between winners and losers
colnames(wdata) = c("Season", "DayNum","Team","Score","Loc","Numot","fgm","fga","fgm3","fga3","ftm","fta","or","dr","ast","to","stl","blk","pf")
colnames(ldata) = c("Season","Daynum","Team","Score","fgm","fga","fgm3","fga3","ftm","fta","or","dr","ast","to","stl","blk","pf")

#proceeded to remove the extra columns in wdata
wdata$Loc = NULL
wdata$Numot = NULL

install.packages("gtools")

library("gtools", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
#merging winners and losers into a common dataset where there is winner/loser..just teams with their stats
merged = smartbind(wdata,ldata)

#Used sqldf package for data wrangling...helps us execute sql commands on dataframes

data = merged


install.packages("sqldf")

library("sqldf", lib.loc="/Library/Frameworks/R.framework/Versions/3.4/Resources/library")



sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2003'
group by Team"
data2003 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2004'
group by Team"
data2004 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2005'
group by Team"
data2005 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2006'
group by Team"
data2006 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2007'
group by Team"
data2007 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2008'
group by Team"
data2008 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2009'
group by Team"
data2009 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2010'
group by Team"
data2010 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2011'
group by Team"
data2011 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2012'
group by Team"
data2012 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2013'
group by Team"
data2013 = sqldf(sql)


sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2014'
group by Team"
data2014 = sqldf(sql)


sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2015'
group by Team"
data2015 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2016'
group by Team"
data2016 = sqldf(sql)

sql = "select Team,Season,AVG(Score),AVG(fgm),AVG(fga),AVG(fgm3),AVG(fga3),AVG(ftm),AVG(fta),AVG(dr),AVG(ast),AVG(stl),AVG(blk),AVG(pf)
from data
where Season= '2017'
group by Team"
data2017 = sqldf(sql)


TidyData = rbind(data2003,data2004,data2005,data2006,data2007,data2008,data2009,data2010,data2011,data2012,data2013,data2014,data2015,data2016,data2017)
write.csv(TidyData,file = "TidyData.csv")

#PART 2: CLUSTERING.

#PCA
View(tidydata)
pca_ncaa=prcomp(tidydata, scale. = TRUE, center = TRUE)
plot(pca_ncaa)
pca_ncaa.var =pca_ncaa$sdev ^2
pve=pca_ncaa.var/sum(pca_ncaa.var )
plot(pve , xlab=" Principal Component ", ylab=" Proportion of
+      Variance Explained ", ylim=c(0,1) ,type='b')
plot(cumsum (pve ), xlab=" Principal Component ", ylab ="
+      Cumulative Proportion of Variance Explained ", ylim=c(0,1) ,
+      type='b')

#Heirarchical clustering using first 12 components 
#We use 12 components because 12 components explain most of the variance according to graph
pca_ncaa.scaled = scale(pca_ncaa$x[,1:12])
pca_ncaa.ward = hclust(dist(pca_ncaa.scaled), method="ward.D2")
plot(pca_ncaa.ward,main="Ward Linkage", xlab="", sub="", cex=.9)
cutree(pca_ncaa.ward,4)

#K Means clustering

#First without pca
k.max <- 15
data <- tidydata
wss <- sapply(2:k.max,
function(k){kmeans(data, k, nstart=10 )$tot.withinss})
plot(2:k.max, wss,
type="b", pch = 19, frame = FALSE,
xlab="Number of clusters K",
ylab="Total within-clusters sum of squares")

# No real 'elbow', but we'll use 4.

km_ncaa = kmeans(data,4)
km_ncaa

#got (between_SS / total_SS =  92.8 %)
#4 clusters of sizes 1322, 1260, 1326, 1222


#Now lets try running kmeans after doing pca
km_pca_ncaa = kmeans(pca_ncaa$x[,1:12],4)
km_pca_ncaa

#(between_SS / total_SS =  31.3 %)
#4 clusters of sizes 1389, 1214, 1628, 899
#So it did not Improve after PCA


#PART 3: REGRESSION.

#Data wrangling to generate required dataset
sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2003
Group by Team"
d2003p2 = sqldf(sql)
View(d2003p2)

sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2004
Group by Team"
d2004p2 = sqldf(sql)
View(d2004p2)

sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2005
Group by Team"
d2005p2 = sqldf(sql)
View(d2005p2)

sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2006
Group by Team"
d2006p2 = sqldf(sql)
View(d2006p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2007
Group by Team"
d2007p2 = sqldf(sql)
View(d2007p2)

sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2008
Group by Team"
d2008p2 = sqldf(sql)
View(d2008p2)

sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2009
Group by Team"
d2009p2 = sqldf(sql)
View(d2009p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2010
Group by Team"
d2010p2 = sqldf(sql)
View(d2010p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2011
Group by Team"
d2011p2 = sqldf(sql)
View(d2011p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2012
Group by Team"
d2012p2 = sqldf(sql)
View(d2012p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2013
Group by Team"
d2013p2 = sqldf(sql)
View(d2013p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2014
Group by Team"
d2014p2 = sqldf(sql)
View(d2014p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2015
Group by Team"
d2015p2 = sqldf(sql)
View(d2015p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2016
Group by Team"
d2016p2 = sqldf(sql)
View(d2016p2)


sql = "select Season,Team,MIN(DayNum),Score
from sample
where Season = 2017
Group by Team"
d2017p2 = sqldf(sql)
View(d2017p2)

#####################################

TidyPart2 = rbind(d2003p2,d2004p2,d2005p2,d2006p2,d2007p2,d2008p2,d2009p2,d2010p2,d2011p2,d2012p2,d2013p2,d2014p2,d2015p2,d2016p2)


#####################################

#Third
sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2003 = sqldf(sql)
View(abc2003)



#Second 
sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2003"
t22 = sqldf(sql)
View(t22)


#First
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2003"
t11 = sqldf(sql)
View(t11)

####################################


#2004
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2004"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2004"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2004 = sqldf(sql)
View(abc2004)


####################################

#2005
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2005"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2005"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2005 = sqldf(sql)
View(abc2005)


######################################
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2006"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2006"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2006 = sqldf(sql)
View(abc2006)

######

sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2007"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2007"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2007 = sqldf(sql)
View(abc2007)


###
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2008"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2008"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2008 = sqldf(sql)
View(abc2008)

####

sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2009"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2009"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2009 = sqldf(sql)
View(abc2009)


###

sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2010"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2010"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2010 = sqldf(sql)
View(abc2010)

###


sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2011"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2011"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2011 = sqldf(sql)
View(abc2011)

###


sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2012"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2012"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2012 = sqldf(sql)
View(abc2012)


###
sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2013"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2013"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2013 = sqldf(sql)
View(abc2013)


sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2014"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2014"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2014 = sqldf(sql)
View(abc2014)


sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2015"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2015"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2015 = sqldf(sql)
View(abc2015)


sql = "select Team,Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf
from t1 where Season = 2016"
t11 = sqldf(sql)
View(t11)

sql = "select Season,Team,FirstDay,Score
from t2 where Season = 2016"
t22 = sqldf(sql)
View(t22)

sql = "select t11.Team,t11.Season,AScore,Afgm,Afga,Afgm3,Afga3,Aftm,Afta,Adr,Aast,Astl,Ablk,Apf,t22.Score
from t11 inner join t22 on t11.Team = t22.Team"
abc2016 = sqldf(sql)
View(abc2016)


######

RegressionData = rbind(abc2003,abc2004,abc2005,abc2006,abc2007,abc2008,abc2009,abc2010,abc2011,abc2012,abc2013,abc2014,abc2015,abc2016)


write.csv(RegressionData,file = "RegressionData.csv")


#Finally ready for regression on RegressionData.csv

model = lm(Score~.,data = RegressionData)
summary(model)

'''
Call:
lm(formula = Score ~ ., data = RegressionData)

Residuals:
    Min      1Q  Median      3Q     Max 
-30.890  -8.248  -0.471   7.943  48.289 

Coefficients: (1 not defined because of singularities)
              Estimate Std. Error t value Pr(>|t|)  
(Intercept) -71.483454 201.246769  -0.355   0.7225  
Team         -0.002696   0.003540  -0.762   0.4465  
Season        0.040982   0.100293   0.409   0.6829  
AScore        1.066175   0.520593   2.048   0.0408 *
Afgm         -0.717124   1.160527  -0.618   0.5368  
Afga          0.416034   0.236532   1.759   0.0789 .
Afgm3        -0.056860   1.259702  -0.045   0.9640  
Afga3        -0.270857   0.447328  -0.605   0.5450  
Aftm                NA         NA      NA       NA  
Afta         -0.295875   0.403505  -0.733   0.4636  
Adr          -0.137414   0.295307  -0.465   0.6418  
Aast          0.002627   0.308839   0.009   0.9932  
Astl          0.124142   0.363598   0.341   0.7329  
Ablk          0.777867   0.361394   2.152   0.0316 *
Apf          -0.594742   0.241456  -2.463   0.0140 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 11.39 on 914 degrees of freedom
Multiple R-squared:  0.1552,	Adjusted R-squared:  0.1432 
F-statistic: 12.92 on 13 and 914 DF,  p-value: < 2.2e-16
'''

#############################


#CV for ordinary regression

cv.lm(df = RegressionData, form.lm = formula(Score ~ .), m=3, dots = 
FALSE, seed=29, plotit=TRUE, printit=TRUE)


reg<-lm(logWet.weight~logAverageBL)
cv.lm(RegressionData, lmodel, m=5)



#########
#Exploring Leaps

leaps<-regsubsets(Score~.,data=RegressionData,nbest=10)
# view results 
summary(leaps)
# plot a table of models showing variables in each model.
# models are ordered by the selection statistic.
plot(leaps,scale="r2")

#############################

#function to extract p value of F-test (testing the null hypothesis R^2=0) 
lmp <- function (modelobject) {
  if (class(modelobject) != "lm") stop("Not an object of class 'lm' ")
    f <- summary(modelobject)$fstatistic
    p <- pf(f[1],f[2],f[3],lower.tail=F)
    attributes(p) <- NULL
    return(p)
}


lmp(lmodel)    #p value of F test


summary(lmodel)$r.squared


############################









