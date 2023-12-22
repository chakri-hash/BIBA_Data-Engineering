import numpy as np

print("reshaping array")

arr = np.array([
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12]])

newarr = arr.reshape(2,2,3)

print(newarr)

print("flatten array")

arr = np.array([[1,2,3],[4,5,6]])
flat_arr = arr.flatten()
print(flat_arr)