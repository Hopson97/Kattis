#https://open.kattis.com/problems/ladder
import math 

line = input().split()
h = int(line[0])
v = math.radians(int(line[1]))

print(math.ceil(h / (math.sin(v))))