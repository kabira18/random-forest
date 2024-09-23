getwd()
install.packages("pscl")
library(pscl)
data("vote92")
data<- vote92

str(data)
library(randomForest)

model=randomForest(vote~.,
                   ntree=20,
                   data = data)


varImpPlot(model,main = "variable importance")
