#Create a data frame with all the variables in the excel file

Sn <- c("2020-08935-MN-0", "2020-12230-MN-0", "2020-12397-MN-0", "2020-08938-MN-0", "2020-11478-MN-0", "2020-08929-MN-0", "2020-12331-MN-0", "2020-08934-MN-0", "2020-12351-MN-0", "2020-12425-MN-0", "2020-10803-MN-0", "2020-09950-MN-0", "2020-11131-MN-0", "2020-12395-MN-0", "2020-08933-MN-0", "2020-08937-MN-0", "2020-12377-MN-0", "2020-12395-MN-0", "2020-12407-MN-0", "2020-12381-MN-0", "2020-12341-MN-0", "2020-12827-MN-0")
Gender <- c("MALE", "FEMALE", "MALE", "MALE", "MALE", "MALE", "MALE", "MALE", "MALE", "FEMALE", "MALE", "MALE", "MALE", "MALE", "MALE", "MALE", "FEMALE", "MALE", "MALE", "MALE", "FEMALE", "FEMALE")
Age <- c(19, 19, 19, 19, 19, 19, 20, 19, 18, 19, 19, 18, 19, 18, 20, 20, 19, 18, 19, 18, 18, 18)
Fs <- c("SCIENCE", "SCIENCE", "SCIENCE", "SCIENCE", "SCIENCE", "SCIENCE", "ENGLISH", "SCIENCE", "ENGLISH", "ENGLISH", "SCIENCE", "ENGLISH", "SCIENCE", "ENGLISH", "SCIENCE", "MATH", "SCIENCE", "ENGLISH", "MATH", "MATH", "MATH", "ENGLISH")
Fc <- c("BLUE", "YELLOW", "BLUE", "BLUE", "RED", "BLUE", "YELLOW", "YELLOW", "BLUE", "RED", "BLUE", "GREEN", "BLUE", "BLUE", "YELLOW",  "BLUE", "BLUE", "BLUE", "YELLOW",  "BLUE", "BLUE", "YELLOW")
Height <- c(171, 154, 165, 165, 166, 160, 162, 167, 169, 162, 175, 161, 172, 175, 173, 174, 152, 175, 175, 176, 158, 156)
Weight <- c(73, 48, 60, 45, 51, 53, 60, 45, 48, 54, 65, 65, 91, 68, 75, 49, 60, 68, 57, 58, 49, 43)
Gim <- c(89, 95, 90, 94, 95, 90, 85, 89, 83, 93, 88, 85, 94, 96, 87, 92, 94, 96, 94, 92, 83, 85)
Gisap <- c(89, 94, 93, 97, 89, 94, 87, 89, 87, 94, 91, 87, 93, 95, 95, 94, 94, 95, 91, 95, 91, 88)
Gis <- c(90, 91, 90, 94, 94, 93, 85, 88, 85, 94, 93, 89, 92, 96, 90, 93, 92, 96, 92, 90, 86, 95)
Gimail <- c(92, 97, 95, 96, 91, 98, 93, 89, 85, 93, 97, 96, 90, 95, 97, 92, 94, 95, 92, 94, 89, 95)


#Data frame

description <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Take all female who like color yellow and more than 150 cm
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sex <- COE_1_3_EDA$GENDER
Fave_Color <- COE_1_3_EDA$`FAVORITE COLOR`
Height <- COE_1_3_EDA$HEIGHT

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Gender=="FEMALE" & Fc=="YELLOW" & Height>150)

#Take all male who like color blue and at most 60 kilos
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sex <- COE_1_3_EDA$GENDER
Fave_Color <- COE_1_3_EDA$`FAVORITE COLOR`
Weight <- COE_1_3_EDA$WEIGHT

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Gender=="MALE" & Fc=="BLUE" & Weight<=60)

#Take all female who like color yellow and more than 150 cm
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sex <- COE_1_3_EDA$GENDER
Fave_Color <- COE_1_3_EDA$`FAVORITE COLOR`
Height <- COE_1_3_EDA$HEIGHT

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Gender=="FEMALE" & Fc=="YELLOW" & Height>150)

#Take all female who like math subject and color green
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sex <- COE_1_3_EDA$GENDER
Fave_Sub <- COE_1_3_EDA$`FAVORITE SUBJECT`
Fave_Color <- COE_1_3_EDA$`FAVORITE COLOR`

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Gender=="FEMALE" & Fc=="GREEN" & Fs=="MATH")

#Take all students who like Math and the grade in Math and Statistics and Probability is greater than 95
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sn <- COE_1_3_EDA$`STUDENT NUMBER`
Fave_Sub <- COE_1_3_EDA$`FAVORITE SUBJECT`
G_i_m <- COE_1_3_EDA$`GRADE IN MATH`
G_i_s_a_p <- COE_1_3_EDA$`GRADE IN STATISTICS AND PROBABILITY`

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Fs=="MATH" & Gim>95 & Gisap>95)

#Take all students who like Science and the grade in Science is greater than 95
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sn <- COE_1_3_EDA$`STUDENT NUMBER`
Fave_Sub <- COE_1_3_EDA$`FAVORITE SUBJECT`
G_i_s <- COE_1_3_EDA$`GRADE IN SCIENCE`

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Fs=="SCIENCE" & Gis>95)

#Take all students who like English and the grade in English is greater than 95
#Create a data from Encoded data file

attach(COE_1_3_EDA)

#Extract all variables needed

Sn <- COE_1_3_EDA$`STUDENT NUMBER`
Fave_Sub <- COE_1_3_EDA$`FAVORITE SUBJECT`
G_i_m_a_i_l <- COE_1_3_EDA$`GRADE IN MEDIA AND INFORMATION LITERACY`

#Create a data frame from the encoded data file with all the variables needed

my_data_frame <- data.frame(Sn, Gender, Age, Fs, Fc, Height, Weight, Gim, Gisap, Gis, Gimail)

#Create a subset data frame that satisfy all conditions

new_data_frame <- subset(my_data_frame, Fs=="ENGLISH" & Gimail>95)

#MATRIX 

values <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
cn <- c("A", "B", "C", "D", "E")
rn <- c("Red", "Blue", "Yellow", "Green")

data <- matrix(values, nrow = 4, ncol = 5, byrow = TRUE, dimnames = list(rn,cn))

#LIST 

artists <- list(x=1:40, y=seq(1,20), z=c("NCT", "Twice", "Big Bang", "EXO", "Day6"))

