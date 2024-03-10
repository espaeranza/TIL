# https://school.programmers.co.kr/learn/courses/30/lessons/12941

# 어떻게 주어진 배열 A, B 값들을 곱해서 최소값을 만들 것인가?
# A배열의 최솟값과 B배열의 최대값을 곱한 후 순서대로 곱해서 더하면 누적값의 최소값을 반환할 수 있음

def solution(A, B):
    answer = 0
    A.sort()
    B.sort(reverse = True)

    for i in range(len(A)):
        answer += A[i] * B[i]
    return answer
