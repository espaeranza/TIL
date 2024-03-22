# https://school.programmers.co.kr/learn/courses/30/lessons/43165

def solution(numbers, target):
    answer = 0
    stack = [(0,0)]
    
    while (stack) :
        # print(stack)

        index, sum = stack.pop()
        
        if index == len(numbers):
            if sum == target :
                answer +=1
            continue
        
        stack.append((index+1, sum + numbers[index]))
        stack.append((index+1, sum - numbers[index]))
    return answer