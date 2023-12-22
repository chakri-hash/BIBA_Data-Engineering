import pandas as pd

data = pd.read_csv("business-operations-survey-2022-price-and-wage-setting.csv",encoding='cp1252')
print(data)
print(data.columns)



main_name = ['Names', 'Science', 'Maths']
data = [['Alex', 50,30], ['Brad', 34, 67], ['Joey', 23, 100]]
data = pd.DataFrame(data, columns=main_name)
print(data)



