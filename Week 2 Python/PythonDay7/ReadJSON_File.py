import json
 
# Opening JSON file
f = open('data.json',)
 
# returns JSON object as
# a dictionary
data = json.load(f)
 
# Iterating through the json
# list
for i in data['people1']:
    print(i)
 
# Closing file
f.close()
