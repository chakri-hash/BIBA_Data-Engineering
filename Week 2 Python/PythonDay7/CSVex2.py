import csv
rows = []
with open("business-operations-survey-2022-price-and-wage-setting.csv", 'r') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)
print(header)
print(rows)