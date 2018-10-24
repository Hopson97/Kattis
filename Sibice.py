#https://open.kattis.com/problems/sibice
import math
line = input().split()
x = int(line[1])
y = int(line[2])
h = math.sqrt(x * x + y * y)

for i in range(int(line[0])):
    if (int(input()) <= h):
        print("DA")
    else:
        print("NE")

