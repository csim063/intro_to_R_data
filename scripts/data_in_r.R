#-----------------------------------------------------------------------------#
#
# Types of data in R
#
# Basic and informal introduction to types of data that can be used in R and 
#   how to work with them
#
# Author: Craig Simpkins
#
# Date Created: 11-11-2022
#
# Email: simpkinscraig063@gmail.com
#
# Before beginning ensure that you have either cloned the GitHub repo
# at https://github.com/csim063/intro_to_R_data, or have copied both
# example data sets (demography.csv, i_exist.txt) and know the paths
# to access this data
#-----------------------------------------------------------------------------#

# SETTING PATHS IN R ##########################################################
## 1. Use full path -----------------------------------------------------------
file.exists("YOUR_OWN_PATH/i_exist.txt")

## 2. Use setwd() -------------------------------------------------------------
original_wd <- getwd() # To allow for easy resetting

setwd("C:/")
file.exists("i_exist.txt")

setwd(original_wd) # Reset working directory

## 3. Projects (Rproj) --------------------------------------------------------
file.exists("data/i_exist.txt")

# LOADING DATA ################################################################
# Load the data use the base library function
tree_dem <- read.csv("data/demography.csv")

# Alternative import which can be faster for large data
# library("data.table")
# tree_dem <- data.table::fread("data/demography.csv")

# DATA TYPES ##################################################################
str(tree_dem)

# DATA STRUCTURES #############################################################
## Elements -------------------------------------------------------------------
x <- 9 # x is a single element

# Access element in first row and first column 
tree_dem[1,1]

## Vectors --------------------------------------------------------------------
vector() # empty 'logical' vector
vector("character", length = 3) # a vector of mode 'character' with 3 elements
numeric(5)   # a numeric vector with 5 elements
c("a", "b", "c") #c() concatenates the elements within
tree_dem[[3]] # Vector in column 3


## Matrix ---------------------------------------------------------------------
m <- matrix(nrow = 2, ncol = 2)
m

dim(m)

matrix(c(1,2,1,2),
       nrow = 2,
       ncol = 2)

## List -----------------------------------------------------------------------
list(1, "b", FALSE, c(1,2,3))

as.list(tree_dem[3,])


## Data frame -----------------------------------------------------------------
class(tree_dem)

df <- data.frame(col1 = letters[1:10], col2 = 1:10, logic1 = logical(10))
df

