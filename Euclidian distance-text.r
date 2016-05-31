

#read expened data: include the large opened economies, to get significant differences
cluster =read.table(file="cluster.txt",header=T)
dist.eu= dist(cluster,method="euclidean",p=2,diag=T) #euclidan distance
dist.eu2=dist.eu^2
s=hclust(dist.eu2, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)

cluster2=cluster[-12,]	#form new matrix witout 12th variable
dist.eu2= dist(cluster2,method="euclidean",p=2,diag=T)
dist.eu22=dist.eu2^2
s=hclust(dist.eu22, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)