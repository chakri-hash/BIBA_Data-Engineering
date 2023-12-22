with open("business-operations-survey-2022-price-and-wage-setting.csv") as file:
    content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)