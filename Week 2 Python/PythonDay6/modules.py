from math import sqrt, factorial
 

print(sqrt(16))
print(factorial(6))

#we can do this 
from math import *
 

print(sqrt(16))
print(factorial(6))

#renaming pythn module
print('renaming python module')
import math as mt

print(mt.sqrt(16))
print(mt.factorial(6))

#time modules
print('time modules')
from datetime import date
import time

print(time.time())  
 
print(date.fromtimestamp(454554))  