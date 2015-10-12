### BRUTE-FORCING THE STUPID VIETNAMESE PUZZLE ###

library(combinat)

all <- permn(1:9)
answers <- matrix(ncol = 9)
for (i in 1:length(all)){
  a <- unlist(all[i])
  if (((a[1]+13*a[2]/a[3]+a[4]+12*a[5]-a[6]-11+a[7]*a[8]/a[9]-10)) == 66){
    answers <- rbind(answers,a)
    cat(a,"\n")
  }
}
answers <- answers[-1,]
dim(answers)
