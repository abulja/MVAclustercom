#read expened data: include the large opened economies, to get significant differences

cluster =read.table(file="cluster.txt",header=T)
dist.mi= dist(cluster,method="maximum",p=2,diag=T) 

#maximumdistance

dist.mi2=dist.mi^2
s=hclust(dist.eu2, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)

cluster2=cluster[-12,]	#form new matrix witout 12th variable
dist.mi2= dist(cluster2,method="maximum",p=2,diag=T)
dist.mi22=dist.eu2^2
s=hclust(dist.mi22, method = "single")
plot(s, hang = -0.1, frame.plot = TRUE, ann = FALSE)
