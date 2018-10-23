#https://open.kattis.com/problems/abc
abc = list(map(int, input().split()))
abc.sort()
abc = {
    "A": abc[0],
    "B": abc[1],
    "C": abc[2]
}
for i in input():
    print(abc[i], end = " ")
