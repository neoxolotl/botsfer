import json

# some JSON:


with open('file') as f:
  data = json.load(f)

# Output: {'name': 'Bob', 'languages': ['English', 'Fench']}
print(data)



# parse x:
#y = json.loads(x)

# the result is a Python dictionary:
#print(y["age"])
