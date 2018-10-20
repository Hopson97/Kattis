#https://open.kattis.com/problems/zamka
l = int(input())
d = int(input())
x = int(input())

def loop(begin, end, inc):
    for i in range(begin, end, inc):
        if sum([int(x) for x in str(i)]) == x:
            print(i)
            break 

loop(l, d + 1, 1)
loop(d, l - 1, -1)
