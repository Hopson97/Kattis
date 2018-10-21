#https://open.kattis.com/problems/cold
total = 0
input()
for i in list(map(int, input().split())):
    total += i < 0 
print(total)
    