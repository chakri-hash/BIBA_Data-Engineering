import csv

file = open('business-operations-survey-2022-price-and-wage-setting.csv')
type(file)

csvreader = csv.reader(file)

#to extract field names
header =[]
header = next(csvreader)
print(header)

#to extract rows and columns
rows =[]
for row in csvreader:
    rows.append(row)
print(row)

file.close()

