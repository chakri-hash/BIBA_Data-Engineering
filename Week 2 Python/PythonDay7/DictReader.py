import csv

with open("business-operations-survey-2022-price-and-wage-setting.csv",'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        print(row)