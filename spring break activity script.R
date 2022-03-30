library(ggplot2)
library(caret)
library(lattice)

Fullerton <- data.frame(FullertonHousing)

q3ctrl_1 <- trainControl(method = "cv", number = 5)
q3model_1 <- train(PRICE ~ BEDS + BATHS, data=Fullerton, method = "lm", trControl = q3ctrl_1)

print(q3model_1)

q3ctrl_2 <- trainControl(method = "cv", number = 5)
q3model_2 <- train(PRICE ~ BEDS + SQUARE_FEET, data=Fullerton, 
                   method="lm", trControl = q3ctrl_2)

print(q3model_2)

q3ctrl_3 <- trainControl(method = "cv", number = 5)
q3model_3 <- train(PRICE ~ BEDS + YEAR_BUILT, data=Fullerton, 
                   method = "lm", trControl = q3ctrl_3)

print(q3model_3)

q3ctrl_4 <- trainControl(method = "cv", number = 5)
q3model_4 <- train(PRICE ~ BATHS + SQUARE_FEET, data=Fullerton, 
                   method = "lm", trControl = q3ctrl_4)

print(q3model_4)

q3ctrl_5 <- trainControl(method = "cv", number = 5)
q3model_5 <- train(PRICE ~ BATHS + YEAR_BUILT, data=Fullerton, 
                   method = "lm", trControl = q3ctrl_5)

print(q3model_5)

q3ctrl_6 <- trainControl(method= "cv", number = 5)
q3model_6 <- train(PRICE ~ SQUARE_FEET + YEAR_BUILT, data=Fullerton,
                   method = "lm", trControl = q3ctrl_6)

print(q3model_6)

q4ctrl_1 <- trainControl(method = "cv", number = 5)
q4model_1 <- train(PRICE ~ BEDS + BATHS + SQUARE_FEET, data = Fullerton,
                   method = "lm", trControl = q4ctrl_1)

print(q4model_1)

q4ctrl_2 <- trainControl(method = "cv", number = 5)
q4model_2 <- train(PRICE ~ BEDS + BATHS + YEAR_BUILT, data = Fullerton,
                   method = "lm", trControl = q4ctrl_2)

print(q4model_2)

q4ctrl_3 <- trainControl(method = "cv", number = 5)
q4model_3 <- train(PRICE ~ YEAR_BUILT + BATHS + SQUARE_FEET, data = Fullerton,
                   method = "lm", trControl = q4ctrl_3)

print(q4model_3)

q4ctrl_4 <- trainControl(method = "cv", number = 5)
q4model_4 <- train(PRICE ~ BEDS + YEAR_BUILT + SQUARE_FEET, data = Fullerton,
                   method = "lm", trControl = q4ctrl_4)

print(q4model_4)