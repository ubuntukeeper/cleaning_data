# Readme

To run the run_analysis.R script you should do the following:
 - download the script to your computer to current working directory of RStudio
 - import it to RStudio using command:
 ```sh
 > source("run_analysis.R")
 ```
 - run it using command:
 ```sh
 > run_analysis(directory)
 ```
 , where 'directory' is full path to uncompressed directory of dataset "UCI HAR Dataset", e.g. /home/user/documents/UCI HAR Dataset/

Internally the script will set the directory "UCI HAR Dataset" as working directory. The result of analysis - file result.txt will be placed there.