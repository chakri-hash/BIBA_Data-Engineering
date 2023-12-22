import json
with open('data.json') as json_file:
    data = json.load(json_file)
    print(data['people1'][0])
    
    print("\nPrinting nested dictionary as a key-value pair\n")
    for i in data['people1']:
        print("Name : ", i['name'])
        print("website : ", i['website'])
        print("From : ", i['from'])
        print()