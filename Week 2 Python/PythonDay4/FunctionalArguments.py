
#default arguments
def myFun(x,y=100):
    print("x : ",x)
    print("y : ",y)

print('default arguments')
myFun(10)

#keyword argumernts
def thisFun(firstName, lastName):
    print(firstName,lastName)
    
print('keyword arguments')
thisFun(firstName='abcd',lastName='efgh')

#positional arguments
def MyFun(name,age):
    print(name, age)

print('positional arguments')
MyFun('abcd',34)
MyFun(34,'abcd')


#arbitrary keyword arguments
def Arbitrary(*argss):
    for arg in argss:
        print(arg)
print('Arbitrary keyword arguments')    
Arbitrary('Hi', 'I', 'am', 'Bravo')


#variable length keyword arguments
def Vkey(**argss):
    for key, value in argss.items():
        print("%s = %s" %(key, value))
    
print('variable length keyword arguments')
Vkey(first='abcd',mid='efgh',last='ijkl')
