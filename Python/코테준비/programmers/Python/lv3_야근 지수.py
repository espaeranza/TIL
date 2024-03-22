# https://school.programmers.co.kr/learn/courses/30/lessons/12927

def solution(n, works):
    result = 0 # 결과를 담을 변수    
    works.append(0) # 최소값을 위해 works에 0추가    
    works.sort() # works를 오름차순으로 정렬    
    for i in range(1, len(works)): # works에 대해 맨뒤에서 부터 확인     
    # 인덱싱하기 편하게 하도록 i는 1부터 시작        
        tmp = works[-i] - works[-(i+1)] # works에서 첫번째로 큰 숫자와 두번째로 큰 숫자의 차이 구함        
        if tmp * i < n: # 해당 차이 x 몇번째인지가 n보다 작으면            
            n -= tmp * i # 그만큼 n을 빼주고            
            for j in range(1, i + 1):
                works[-j] -= tmp # 첫번째로 큰 숫자를 두번째로 큰숫자와 같게 만든다.        
        else: # 해당 차이 x 몇번째인지가 n보다 작은게 아니라면            
            q = n//i # n에 대해서 몇번째인지로 나눈다. 이때 몫은 q, 나머지는 n            
            n = n%i
            for j in range(1, i + 1):
                works[-j] -= q # 제일 뒤의 숫자부터, i번째까지 몫만큼 빼준다.            
            for j in range(1, n + 1):
                works[-j] -= 1 # 나머지 처리            
            break # 끝    
    for i in works:
        result += i ** 2

    return result