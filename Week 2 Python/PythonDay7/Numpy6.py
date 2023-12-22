import numpy as np 
  
arr = np.array([[1, 5, 6], 
                [4, 7, 2], 
                [3, 1, 9]]) 
  
# maximum element of array 
print ("Largest element is:", arr.max())

print("row-wise max elements : ", arr.max(axis = 1))

print ("Column-wise minimum elements:", arr.min(axis = 0)) 

print ("Sum of all array elements:", arr.sum())

# cumulative sum along each row 
print ("Cumulative sum along each row:\n", arr.cumsum(axis = 1)) 
 