pieces = list(map(int, input().split()))
correct = [1, 1, 2, 2, 2, 8]

for i in range(6):
    print(correct[i] - pieces[i], end = " ")