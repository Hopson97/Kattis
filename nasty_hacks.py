#https://open.kattis.com/problems/nastyhacks
for i in range (int(input())):
    line = input().split()
    cost = int(line[0]) + int(line[2])
    noAds = int(line[1])
    if cost < noAds:
        print ("advertise")
    elif cost > noAds:
        print ("do not advertise")
    else:
        print ("does not matter")

