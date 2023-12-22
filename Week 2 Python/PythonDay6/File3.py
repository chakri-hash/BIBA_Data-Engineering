
with open("qwerty.txt") as file:  
    data = file.read() 
 
print(data)


file = open("qwerty.txt", "r")
print (file.read(5))


with open("qwerty.txt", "r") as file:
    data = file.readlines()
    for line in data:
        word = line.split()
        print (word)


file = open('qwerty.txt','w')
file.write("This is the write command")
file.write("It allows us to write in a particular file")
file.close()

with open("qwerty.txt") as file:  
    data = file.read() 
 
print(data)



with open("file.txt", "w") as f: 
    f.write("Hello World!!!")


with open("file.txt", "w") as f: 
    f.write("Hello World!!!")


file = open('qwerty.txt', 'a')
file.write(" This will add this line")
file.close()

with open("qwerty.txt") as file:  
    data = file.read() 
 
print(data)


