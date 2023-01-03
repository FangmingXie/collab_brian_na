library("minfi")
library("minfiData")

output <- "./data/Johann_2016/Johann_2016_betas.csv" 

df <- read.csv("./data/Johann_2016/allsamples.csv", header=FALSE)
bn <- df[["V1"]]
bn <- file.path("./data/Johann_2016/idat", bn)
print(length(bn))
# bn <- bn[1:5]


# bn <- c(
#     "./data/Johann_2016/idat/GSM1755170_6969568004_R02C01",
#     "./data/Johann_2016/idat/GSM1755171_6164621144_R04C02"
# )

rgset <- read.metharray(bn)
beta <- getBeta(rgset)
# # mset <- preprocessRaw(rgset)
# # gmset <- mapToGenome(mset)

print(output)
write.csv(beta, file=output)
print('Done')