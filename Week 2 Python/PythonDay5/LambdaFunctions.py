str1 = 'hello all'
upper = lambda string : string.upper()
print(upper(str1))

#Add Two Lists Using map and lambda
n1=[1,2,3,4,6]   #--> it takes only first 4 numbers
n2=[5,6,7,8]
res= map(lambda x,y:x+y, n1, n2)
print(list(res))


def cube(y):
    return y*y*y
 
lambda_cube = lambda y: y*y*y
print("Using function defined with `def` keyword, cube:", cube(5))
print("Using lambda function, cube:", lambda_cube(5))

#max number lambda
Max = lambda a, b : a if(a > b) else b
print(Max(1, 2))

###############

format_numeric =lambda num: f"{num:e}" if isinstance(num, int) else f"{num:,.2f}"
 
print("Int formatting:", format_numeric(1000000))
print("float formatting:", format_numeric(999999.789541235))

#filter
li=[1,23,432,56543,23456,98765,1234567890]
final_list=list(filter(lambda x : (x%2!=0),li))

#filter function to check age greater than 18
ages=[12,45,32,64,22,45,11,34,2]
adults = list(filter(lambda age : age > 18,ages))
print(adults)

