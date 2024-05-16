# https://school.programmers.co.kr/learn/courses/30/lessons/42583

from collections import deque
def solution(bridge_length, weight, truck_weights):
    time = 0 # 걸린 시간
    total_weight = 0 # 현재 다리의 전체 무게
    bridge = deque(0 for _ in range(bridge_length))
    truck_weights.reverse()
    
    while truck_weights:
        time += 1 # 1초 지남
        total_weight -= bridge.popleft() # 다리의 맨 앞 원소 빼기
        if truck_weights:
            if total_weight + truck_weights[-1] <= weight: # 다리에 트럭이 더 올라갈 수 있는 경우
                truck = truck_weights.pop()
                bridge.append(truck) # 트럭 추가 -> 다리 무게에 트럭 무게가 추가
                total_weight += truck
            else: # 다리에 트럭이 더 올라갈 수 없는 경우
                bridge.append(0) # 0을 추가 -> 다리 전체의 무게에 영향X
                
    time += bridge_length
    return time