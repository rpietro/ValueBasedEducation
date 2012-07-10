library(foreign)
library(ggplot2)

#data source: http://globalpolicy.gmu.edu/genocide/
#data dictionary: http://goo.gl/TcFFb
genoc <- read.dta("http://globalpolicy.gmu.edu/genocide/genovars_v6.dta")
sort(names(genoc))

#data dictionary http://goo.gl/8WRUf
africa <- read.spss("http://www.afrobarometer.org/files/documents/data/merged_r4_data.sav")
View(africa)
summary(africa$COUNTRY)

#hunger and infant mortality dictionaries http://goo.gl/yzt2X
im <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/value/imr_highres.csv")
View(im)
hunger <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/value/hunger_data.csv")

#Elias, the MAR dataset holds a lot of promise in that it contains information on the level of international support for the specific minority group, which we could then associate with indices of discrimination
#minority group assessments - dictionary at http://www.cidcm.umd.edu/mar/data/mar_codebook_Feb09.pdf
minor <- read.csv("http://www.cidcm.umd.edu/mar/data/marupdate_20042006.csv")
View(minor)

#Elias, this dataset contains information on whether the organization supports education, which we could associated with the multiple variables associated with things such as violent behavior and other variables that indicate low value in terms of society
#Minorities at Risk Organizational Behavior - dictionary at http://www.cidcm.umd.edu/mar/data/marob/me_marob_sept08_codebook.pdf
orgbeh  <- read.csv("http://www.cidcm.umd.edu/mar/data/marob/me_marob_sept08.csv")
View(orgbeh)

#although I can't directly import the data since the format is somewhat odd, http://goo.gl/hp4nb contains a lot of data combining information on education and several other measures of poverty

#WHO mortality data - documentation from http://www.who.int/whosis/database/mort/download/ftp/documentation.zip
who  <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/value/Morticd9.csv")
View(who)
#file below has to be joined with main file
who.country  <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/value/country_codes.csv")

#International Crisis Behavior Project data - dictionaries available from http://goo.gl/GpYVK - Elias, this is the dataset we were looking for in relation to the first plot, as it has a variable for threat to life (includes genocide) and US intervention
icbsystem <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/icb1v10_system.csv")
icbactor <- read.csv("/Users/rpietro/Google Drive/R/nonpublicdata_publications/icb2v10_actor.csv")

#although i didn't extract a specific dataset, UNESCO has a wonderful education, literacy and sciences database http://goo.gl/pt1Ty


#-------------------------
#DATA MANAGEMENT
#-------------------------


#-------------------------
#EXPLORATORY DATA ANALYSIS
#-------------------------

