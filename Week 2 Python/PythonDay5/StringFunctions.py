#count()
print("count of letters")
msg = "hello my dear friends"
print('occurance of e : ', msg.count('e'))

#find()
print("find")
msg= 'abcd efgh'
#check index of ef
print(msg.find('ef'))

#lower
print("lower")

message = 'HEXAFORHEXA IS A COMPUTER SCIENCE PORTAL'
  
# convert message to lowercase 
print(message.lower())

#upper
print("upper")

message = 'HexaforHexa is a computer science portal'
  
# convert message to uppercase 
print(message.upper())

#replace

text = 'subway surfer'
  
          # replace s with t 
replaced_text = text.replace('s', 't') 
print(replaced_text)

#join

text = ['Anshul', 'is', 'my', 'only', 'friend'] 
  
# join elements of text with space 
print(' '.join(text))



def myFun(x):
    x = 20
 
 
# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)


def myFun(x):
    x[0] = 20
 
 
# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)