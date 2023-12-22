import math
def isPrime(n):
    count=0
    x=math.sqrt(n)
    #print(x)
    x=math.ceil(x)
    if n==0:
        print('Neither prime nor composite')
    elif n==1:
        print("Neither prime nor composite")
    else:
        for i in range(2,x):
            if n%i==0:
                count=count+1
    if count != 0:
        print("not prime")
    else:
        print("prime")
            



n=int(input('enter a number'))
isPrime(n)