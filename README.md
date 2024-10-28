# Data Analysis

UCLA 데이터 예측 프로젝트
; UCLA 데이터에 여러가지 분류모델을 적용 + 예측

적용 모델     
• 결정트리     
• 랜덤포레스트(트리개수 50개)      
• 랜덤포레스트(트리개수 1,000개)     
• k-NN     
• SVM(radial basis)     
• SVM(polynimial)     

ü 데이터를 6:4 비율로 나누어 6은 학습데이터, 4는 테스트데이터(예측)로 사용     
ü 각 모델에서 예측한 결과를 table 함수를 사용하여 혼동행렬 출력     
ü 출력한 혼동행렬을 통해 정확도(%) 계산     
ü 과정     
1. 데이터를 획득하고 모델을 적용하기 위한 준비     
2. 학습데이터와 테스트데이터 분리     
3. 학습데이터로 모델을 만들기(모델링)     
4. 테스트데이터로 예측하고, 예측결과를 혼동행렬로 출력     
5. 혼동행렬로 부터 정확도를 계산     

# Projects
**UCLA Admission Prediction**
• Developed a predictive model to determine admission chances using the UCLA admission dataset.
• Applied multiple classification algorithms including:
  • Decision Trees
  • Random Forest (with 50 and 1000 trees)
  • k-NN
  • SVM (Radial Basis and Polynomial)
• Split the dataset into training (60%) and testing (40%) sets for model evaluation.
• Generated confusion matrices to assess the performance of each model and calculated accuracy metrics from the results.
• Documented the entire process, including data preparation, model training, prediction, and performance evaluation.

# Skills
• Programming Languages: R, Python
• Libraries: Rpart, Caret, RandomForest, Class, E1071
• Machine Learning: Decision Trees, Random Forest, k-NN, SVM
• Data Analysis and Visualization
