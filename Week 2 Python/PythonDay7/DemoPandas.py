import pandas as pd
header = ['Name', 'M1 Score', 'M2 Score']
data = [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]

data = pd.DataFrame(data, columns=header)
#data.to_csv('Stu_data.csv', index=False)  -->it has created a csv file. Actually no need of this line but when it is there, it wil create a csv file.
print(data)



