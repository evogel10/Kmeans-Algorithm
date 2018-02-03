#Determines which samples are taken from which tissue by utilizing Kmeans Clustering

#Bring in tissue sample data
geneData <- read.table("/Users/ericvogel/Documents/Johns_Hopkins/Principles_of_Bioinformatics_EN.605.451.81.FA17/Assignments/Module 10/assignment_10_dataset.txt", sep="\t", header=TRUE)

#Manipulate the data so that the columns represent the genes for all the samples
geneData <- t(geneData)

#Use kmeans function to group the data into 2 clusters
tissueCluster <- kmeans(geneData[2:9, 2:11714], 2, nstart = 25)
