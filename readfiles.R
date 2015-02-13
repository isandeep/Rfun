## ##################################################################
## purpose: Read all files of a type into R in a directory in one go!
## author: Sandeep Illuri
## created: 13 Feb 2015 16:30 IST
## ##################################################################

rawToDataframe <- function(pathToDir, fileType="csv", dlm=","){
    pattern = paste0("*.", fileType)
    filenames = list.files(pathToDir, pattern)
    for (name in filenames){
        assign(substr(name, 1, nchar(name)-4),
               read.table(name, sep=dlm, stringsAsFactors=FALSE,
                          header=TRUE), inherits=TRUE)
    }
}


## Usage

## The function takes the following arguments
## 1) pathToDir = path of directory containing files
## 2) fileType = type of file "csv" for csv files , "txt" for other
##    delimited files. default value is "csv"
## 3) dlm = delimiter to be specified in read.table. defaults to ","

## simply run the follwing command in the workspace
## rawToDataframe(pathToDir, "csv", ",") to read all csv files in directory.
## No need to assign this to any object since this function returns NULL.
