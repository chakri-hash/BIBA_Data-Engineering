s={1,2,3,4,5,6,7,8,90}
#add
print('add')
s.add(10)
print(s)

#discard --> removes particular element. it will not give error we are trying to remove already removed error
print('discard')
s.discard(3)
print(s)


#remove --> removes particular element. It will give error if we try to remove already removed error
print('remove')
s.remove(4)
print(s)

#pop -->removes random element
print('pop')
s.pop() 
print(s)

#clear -->removes all elements from list
print('clear')
s.clear()
print(s)

#difference
print('difference')
x={1,2,3,4,5}
y={3,4,5,6,7}
z=x.difference(y)
print(z)

#difference update
print('differnce_update')
x={342,453,564,675,1,2,4,5,786}
y={1,2,3,4,5}
x.difference_update(y)
print(x)


#union
print('union')
set1 = {"a", "b" , "c"}
set2 = {1, 2, 3}

set3 = set1.union(set2)
print(set3)


#update--> it insers the itmes of set2 into set1
print('update')
set1 = {"a", "b" , "c"}
set2 = {1, 2, 3}

set1.update(set2)
print(set1)

#intersection
print('intersection')
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}

z = x.intersection(y)

print(z)



#intersecton update-->The intersection_update() method will keep only the items that are present in both sets.
print('inersection_update')
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}

x.intersection_update(y)

print(x)


#isdisjoint -->Return True if no items in set x is present in set y
print('isdisjoint')
x = {"apple", "banana", "mango"}
y = {"google", "microsoft", "facebook"}

z = x.isdisjoint(y)

print(z)

#issubset -->returns true if all elements of set x are present in set y
print('issubset')
x = {"a", "b", "c"}
y = {"f", "e", "d", "c", "b", "a"}

z = x.issubset(y)

print(z)
