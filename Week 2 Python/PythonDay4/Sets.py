
s={32,34,56}  #set
print(type(s))
print(s)


#typecasting list to set
mySet = set([1,2,3])
print(mySet)

#add element to set
mySet.add(4)
print(mySet)


#set dont have duplicates
myset = {"Hexaware", "for", "Hexaware"}
print(myset) #--> it will give output without duplicate values


myset = {"Hexaware", "for", "Hexaware"}
# values of a set cannot be changed
#myset[1] = "Hello"
print(myset)#-->this will give erroe, as set does not support item assignment


#set can store heterogeneous elements
x={'abcd',4,'efgh',6.99,False,True}
print(x)



#frozen set
print('frozen set')
frozen_set = frozenset([1,2,3])
print(frozen_set)
#frozen_set.add(6)  -->this will give the erroe as we cannot add elements into the frozen set
