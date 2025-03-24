import json 
from faker import Faker
from random import randint 
import datetime
import numpy as np
from scipy.stats import poisson
from math import *
import pandas as pd 
import matplotlib.pyplot as plt 
from statsmodels.tsa.arima.model import ARIMA 

fake=Faker()

def generateHRVals(n=100, noise_level=20):
    originalData=np.random.randint(40, 220, None, dtype=int)
    data = originalData + np.random.normal(scale=noise_level, size=n)
    return pd.Series(data)
    # heartRateDF=poisson.rvs(mu=mean, size=samples)
    # probHeartRate=poisson.pmf(k=predRate,mu=mean)
    # return probHeartRate

# def generateFakeData(numEntries=50):
#     data = {}
#     today = datetime.date.today()
#     for i in range(numEntries):
#         currentUser=fake.uuid4()
#         print(currentUser)
        
#         data[currentUser]={}
#         for date in range(0, 7):
#             today += datetime.timedelta(days=1)
#             data[currentUser]['date']= today
#             maxVal=randint(8,60)
#             for item in range(0,maxVal):
#                 print(item)  
#                 # data[currentUser]['heartRateZone']=np.random.choice(zone1Values,10, p=zone1ProbRest).tolist()
#                 print(data[currentUser]['heartRateZone'])
#     print("---------------------------------")

timeSeriesData=generateHRVals()
model = ARIMA(timeSeriesData, order=(0,2,2))
modelFit=model.fit() 
print(modelFit.summary())
futureVals= modelFit.forecast(steps=10)

plt.figure(figsize=(10,6))
plt.plot(timeSeriesData, label='Original Data')
plt.plot(np.arange(len(timeSeriesData), len(timeSeriesData) + len(futureVals)), futureVals, label='Forecast', color='red')
plt.title('ARIMA Model Forecast')
plt.legend()
plt.show()


 