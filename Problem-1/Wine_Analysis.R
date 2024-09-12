

# Set the directory to the folder containing wine.data file

wine_data <- read.table("wine.data", sep = ",")

typeof(wine_data) #returns "list"

num_cols <- ncol(wine_data)

# wine_data[1] returns the first column values of the table

# set appropriate table headers based on wine.names

wine_names <- c("classID","Alc%", "Mal_Acid", "Ash",
"Alcali_Ash", "Magnesium", "Phenols",
"Flavanoids", "Nonflava_Phenols", "Proanthocyanins",
"Color_Intense", "Hue", "OD280/OD315_dilut_wines",
"Proline")

typeof(wine_names) #character vector length(wine_names)

# create dataframe from two vectors

# assign column names from previously created identifier list

wine_df <- data.frame(wine_data) # typeof(wine_df) returns "list" 

colnames(wine_df) <- wine_names

library(corrplot)

# Save a plot in a pdf file using function pdf("name.pdf") and stop writing to the pdf file with dev.off()

wine_correl = cor(wine_df)
pdf("output.pdf", height=10, width=10) 
# height and width set up the size of the cells 

corrplot(wine_correl, method = 'number',tl.cex = 0.9)
# tl.cex sets the size of font outside matrix, ie: size of labels 

dev.off()

round(cor(wine_df),digits = 2)

nrow(wine_df["classID"==1])
      
wine_df[1:9,1:4]
ncol(wine_df[1:70,c(1,2)]) # GIVING OUTPUT AS 2 COLS 

wine_df.c1 <- wine_df[c("classID" == "1")]
wine_df.c1

subset(x = wine_df,
       subset = classID == 1)


x <- c(8, 2, -8)
x
typeof(x)
y
y <- x[x > 3]
typeof(y)
sum(x + y)