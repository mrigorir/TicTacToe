
array = [0,1,2,3,4,5,6,7,8]
array2 = []
array3 = []
array4 = []
array5 = []
array2 << array[0..2]
array3 << array[3..5]
array4 << array[6..8]
array5.push(array2, array3, array4)
array6 = array5.flatten(1)

p array6

indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]