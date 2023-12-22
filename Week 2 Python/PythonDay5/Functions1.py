print('doctype')
def evenOdd(x):
    if x%2==0:
        print('even')
    else:
        print('odd')
print(evenOdd.__doc__)

#function in function
print('function in function')
def f1():
    s='abcd'
    
    def f2():
        print(s)
f1()
#anonimous
def cube(x) : return x*x*x
cube_v2 = lambda x : x*x*x
print(cube(5))
print(cube_v2(5))
#example
def myfun(x):
    x[0]=20
lst=[10,20,30,40,50]
myfun(lst)
print(lst)

#the reference link is broken if we assign a new value (inside the function)
print('call by reference')
def myFun(x):
    # After below line link of x with previous
    # object gets broken. A new object is assigned
    # to x.
    x = 20

x = 10
myFun(x)
print(x)

#another
print('call be reference')

def swap(x, y):
    temp = x
    x = y
    y = temp
 
x = 2
y = 3
swap(x, y)
print(x)
print(y)

print('map function')
#map function
def add(n):
    return n+n
n=(1,2,3,4,5)
result = map(add,n)
print(list(result))

#map with lambda
numbers=(1,2,3,45)
result = map(lambda x: x+x, numbers)
print(list(result))

# Add two lists using map and lambda
#n1=[1,2,3,4,5]
#n2=[6,7,8,9,10]
#res=map(lambda x,y = x+y, n1, n2)
#print(list(res))

#Modify the String using map()
l = ['sat', 'bat', 'cat', 'mat']
 
# map() can listify the list of strings individually
test = list(map(list,l))
print(test)
