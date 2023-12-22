import numpy as np 
  
a = np.array([[11,22], 
            [32, 44]]) 
b = np.array([[47,563], 
            [90, 80]]) 
  
# add arrays 
print ("Array sum: ", a + b) 
  
# multiply arrays (elementwise multiplication) 
print ("Array multiplication: ", a*b) 
  
# matrix multiplication 
print ("Matrix multiplication: ", a.dot(b)) 