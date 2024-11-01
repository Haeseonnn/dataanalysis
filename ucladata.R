# 1. 데이터를 획득하고 모델을 적용하기 위한 준비과정
ucla = read.csv('https://stats.idre.ucla.edu/stat/data/binary.csv')
str(ucla)
ucla$admit=factor(ucla$admit) # label(int)을 factor형으로 바꾸기 
library(rpart)
library(caret)
library(randomForest)
library(class)
library(e1071)

# 2. 학습데이터와 테스트데이터 분리과정
n=nrow(ucla) # 샘플 개수 
i = 1:n
train_list = sample(i,n*0.6) # 학습데이터 60%
test_list = setdiff(i, train_list) # 나머지 테스트데이터 40%
ucla_train=ucla[train_list,] # 훈련 집합 추출
ucla_test=ucla[test_list,] # 테스트 집합 추출

# 3.학습데이터로 모델을 만드는 과정 (모델링)

## 결정트리
r=rpart(admit~.,data=ucla_train,method="class")

## 랜덤포레스트 (트리 50)
f1=randomForest(admit~.,data=ucla_train, ntree=50)

## 랜덤포레스트 (트리 100)
f2=randomForest(admit~.,data=ucla_train, ntree=100)

## k-NN
k=knn(ucla_train,ucla_test,ucla_train$admit,k=9, prob=TRUE)

## SVM(radial basis)
s1=svm(admit~., data=ucla_train)

## SVM(polynomial)
s2=svm(admit~., data=ucla_train, kernel='polynomial')

# 4. 테스트 데이터로 예측하고, 예측 결과를 혼동행렬로 출력하는 과정 

## 결정트리
pr = predict(r, newdata = ucla_test, type='class') # 예측결과 
table(pr,ucla_test$admit)

## 랜덤포레스트 (트리 50)
pf1 = predict(f1, newdata = ucla_test) # 예측결과 
table(pf1,ucla_test$admit)
confusionMatrix(pf1,ucla_test$admit)

## 랜덤포레스트 (트리 100)
pf2 = predict(f2, newdata = ucla_test) # 예측결과 
table(pf2,ucla_test$admit)

## k-NN
table(k,ucla_test$admit)

## SVM(radial basis)
ps1 = predict(s1, newdata = ucla_test) # 예측결과 
table(ps1,ucla_test$admit)

## SVM(polynomial)
ps2 = predict(s2, newdata = ucla_test) # 예측결과 
table(ps2,ucla_test$admit)
