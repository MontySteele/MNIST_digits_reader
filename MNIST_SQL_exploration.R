#install.packages("dplyr")
#install.packages("rjson")
#install.packages("RMySQL")
#install.packages("dbplyr")


## Connect to sql database
# Load libraries
library(dplyr)
library(rjson)
library(RMySQL)

# Read in credentials from provided JSON file

creds<- fromJSON(file="~/Downloads/rds_cred_MNIST.json")

print(creds)

# Set up SQL server connection

mydb = dbConnect(MySQL(), dbname = creds$database, host = creds$url, port = creds$port, user = creds$user, password = creds$pass)

dbListTables(mydb)

# Request and download data

strs <- dbSendQuery(mydb, "SELECT * from train")

data = fetch(strs, n = -1)
head(data)

write.csv(data, file="mnist_train.csv")

strs <- dbSendQuery(mydb, "SELECT * from test")

data = fetch(strs, n = -1)
head(data)

write.csv(data, file="mnist_test.csv")

dbDisconnect(mydb)