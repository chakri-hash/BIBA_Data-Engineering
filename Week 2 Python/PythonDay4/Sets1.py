#add elements to setprint('add)
ab={'abcd','efgh','ijkl'}
print("the set ab is :",end=" ")
print(ab)
ab.add(89)

#adding elements using iterator
print('add eleemts using iterator')
for i in range(0,6):
    ab.add(i)
print(ab)

#union operator on python sets
print('union')
marvel={'loki','iron man','captain america','spiderman','venom','black panther','hulk','hawkey','thor'}
DC={'batman','superman','aquaman'}

SuperHeroes=marvel.union(DC)
print(SuperHeroes)

#union using "|"
print('union using |')
marvel={'ironman','loki','captain america','thor','black panther','hulk','hawkey'}
sony={'spiderman','venom'}
MCU=marvel|sony
print(MCU)


#intersecting sets
print('intersecting')
set1=set()
set2=set()
for i in range(5):
    set1.add(i)
    
for i in range(2,10):
    set2.add(i)
    
set3=set1.intersection(set2)
print(set3)

#intersection using "&" operator
print('intersect using &')
set3=set1&set2
print(set3)

#set difference
print('set difference')
set1=set()
set2=set()
for i in range(5):
    set1.add(i)

for i in range(3,20):
    set2.add(i)
    
set3=set1.difference(set2)
print(set3)
set4=set2.difference(set1)
print(set4)

#set difference using "-" operator
print('set difference using -')
set3 = set1 - set2
print(set3)


#clear()
print('clear')
s1=set()
for i in range(10):
    s1.add(i)
print(s1)
s1.clear()
print(s1)



#operstions on set
s1={1,2,3,4,5,6,7,8,9,0,12,23,34,56,10,100,20,30,40,50,60,70,80,90,1000}
s2={10,20,30,40,50,60,70,80,"uiop",90,123,345,678,986,"abcd","hjkl"}
s3={10,20,30}
print(1 in s1)
print("ab" not in s1)
print(s1==s2)
print(s1!=s2)
print(s1<=s2) #s1 is a subset of s2 or not
print(s1<s2) #s1 is a proper subset or not
print(s3<s1) #s3 is a proper subset or not
print(s1>=s2) #s1 is superset of s2
print(s1>=s3) #s1 is superset of s3
print(s1>s2) #s1 is proper superset of s2
print(s1|s2) #union
print(s1&s3) #intersection
print(s1-s2) #set of elements in s1 but bot s2
print(s1^s2) #the set of elements in precisely one of s1 or s2

