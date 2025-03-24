from sklearn.datasets import make_classification
from sklearn.model_selection import train_test_split
import pandas as pd
import numpy as np
import xg

# Create fake classification data 
nSamples=1000
nFeatures= 10 
nClasses=4

X,y = make_classification (
    n_samples=nSamples
    n_features=nFeatures
    n_informative=nFeatures
    n_redundant=0
    n_classes=nClasses
    random_state=42
)

X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.2, random_state=42)
X_label, y_label = X_train[:400], y_train[:400]
X_unlabelled = X_train[400:]

X_label= pd.DataFrame(X_label)
y_label= pd.Series(y_label)
X_unlabelled= pd.DataFrame(X_unlabelled)

while True:
    model = xgb.XGBClassifier(
        objective=
    )