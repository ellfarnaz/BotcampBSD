data1 = range(1,6)
data2 = ['a','b','c','d']
data3 = (1,3,5,7,9,11)
data4 = 'mnopqrs'
data5 = 50
data6 = {"angka1": 2, "angka2":1}
data7 = True

print(list(zip(data2, data3)))
print(list(zip(data1, data2, data6.values())))

for i in data6:
    print(i)