#https://open.kattis.com/problems/faktor
import math

line = list(map(int, input().split()))
bribeMin = line[0] * line[1]
while math.ceil(bribeMin / line[0]) == line[1]:
    bribeMin -= 1
print(bribeMin + 1)