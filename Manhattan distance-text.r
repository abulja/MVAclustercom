#read expened data: include the large opened economies, to get significant differences

cluster =read.table(file="cluster.txt",header=T)
dist.ma= dist(cluster,method="manhattan",p=2,diag=T) 

#ManhattanDistance

dist.ma2=dist.ma^2
s=hclust(dist.ma2, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)

cluster2=cluster[-12,]	#form new matrix witout 12th variable
dist.ma2= dist(cluster2,method="manhattan",p=2,diag=T)
dist.ma22=dist.ma2^2
s=hclust(dist.ma22, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)
