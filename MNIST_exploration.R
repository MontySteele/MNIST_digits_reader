# Load in the files

train_df <- read.table("~/Downloads/mnist_train.csv", 
                 header = TRUE,
                 sep = ",")

test_df <- read.table("~/Downloads/mnist_test.csv", 
                       header = TRUE,
                       sep = ",")

summary(train_df)
is.numeric(test_df )

# Check for NA values
sum(is.na(train_df ))
sum(is.na(test_df ))

# look for non-numeric elements
which(!grepl('^[0-9]',train_df))
which(!grepl('^[0-9]',test_df))

## Many features, no NA values. It looks like all columns are numeric.

## The first three columns are redundant indices - remove!

train_df <-train_df[ -c(1:3) ]
summary(train_df)

test_df <-test_df[ -c(1:3) ]
summary(test_df)

## Now we only have the features containing picture information

write.csv(train_df, "mnist_cleaned_train.csv",row.names=F)
write.csv(test_df, "mnist_cleaned_test.csv",row.names=F)

## 
