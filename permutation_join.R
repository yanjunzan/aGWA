
system('find results -name "*agwa_permuted_chr*.RObject" > permutobjects.txt')
aGWAfiles<-as.character.factor(read.table('permutobjects.txt')[,1] )
aGWAfiles

emp<-c()

for (i in 1:length(aGWAfiles) ){

load(aGWAfiles[i])
emp<-c(emp,gwares_permuted)
}

gwares_permuted=emp

save(file=paste("results/agwa_permuted_all.RObject",sep=""),gwares_permuted)
