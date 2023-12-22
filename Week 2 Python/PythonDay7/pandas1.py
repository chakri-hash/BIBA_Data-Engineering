import pandas as pd

data = pd.read_csv("business-operations-survey-2022-price-and-wage-setting.csv",encoding='cp1252')

print(data)

print(data.columns)

print(data.industry)