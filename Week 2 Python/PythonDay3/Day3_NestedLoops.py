
for i in range(1,5):
    print(i)

for i in range(0,5):
    for j in range(1,5):
        print(i," ",j)
    

for i in range(1,5):
    for j in range(2,6):
        if (j%i)!=0:
            break
        print(i,j)


for i in range(1,5):
    if i==3:
        continue
    print(i)
    

for i in range(0,10):
    if i%2==0:
        pass
    print(i)
    

 
    
#list
x=[10,20,30,40,50,60,70,80,90]
print(x)
print(x[::])

#negative indexing
x=[10,20,30,40,50,60,70,80,90]
print(x[-9])
print(x[-6::1])

#slicing
x=[10,20,30,40,50,60,70,80,90]
print(x[2:7])
print(x[3:9:2])

print(x[::2])

print(x[::-1])
print(x[:1:-2])

#incomputable list
x=[10,20,30,40,50,60,70,80,90]
print(x[100:1000:2])
print(x[1:1:1])
print(x[-1:-1:-1])
print(x[:0:])

#modify
lst=[3,4,56,7,8,9]
print(lst)
lst[2:4]=[11,22,33,44,55]
print(lst)


lst[:3]=[]
print(lst)


#concatinating list
a=[23,34,45,56,67,78,89]
print(a)
new_a=a[:3]+a[5:]
print(new_a)

