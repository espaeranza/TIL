# markdown 기초 문법

## Heading (제목)
sharp을 1~6개까지 작성가능합니다
### H3
#### H4
##### H5
###### H6

## Paragraph
일반적으로 글을 쓰되 엔터 하나는 효과가 없음.

문단을 나누고 싶으면 

엔터를 두번

## List
### 순서가 있는 리스트(Orderd List)
1. 식당에 가기
2. 손씻기
   1. 물을 틀고
   2. 손을 적시고
      1. 비누를 묻혀서
      2. 잘 씻고
   3. 말린다.
3. 밥먹기
4. 계산하기
5. 양치하기
### 순서가 없는 리스트(Unorderd List)
- 짜장면
  - 간짜장
  - 삼선짜장
- 돈까스
- 김밥
- 라면(엔터 텝 지우기 지우기)
  1. 물넣기
  2. 끓이기
  3. 스프
  4. 면
  5. 냠냠

## 내용강조
중요한 것은 **굵게** 표시하고 주의할 것은 *기울이고* `코드/명령어`는 따로 표시하자.
- 굵게 할때는 * 두개로 감싼다(**bold**)
- 이탤릭체는 * 한개로 감싼다(*itelic*)
- 코드강조는 backtick 한개로 감싼다 (`code`)

## 내일배움카드 발급
1. 홈페이지에 접속한다.
2. 회원가입을 한다.
3. 발급신청을 한다.
   1. **신청 후 1시간 내외 승인**

---

## 표

|이름|나이|전공|
|---|---|---|
|김김김|25|컴공|
|이이이|27|경영|
|박박박|30|기계|

## 코드블럭
```
mkdir aaa
cd aaa
touch b.txt
```

```python
a = 1
b = 2
c = a + b
print(c)

def fun():
   return 1
   
```

## 인용문
> 일단 유명해 져라. 그러면 아무튼 박수를 쳐준다.
> 
> 앤디 워홀

## 수식
### 줄 수식
글 도중에 수식을 넣으려면 $x + y$ 이렇게 합니다.

### 블럭 수식
$$
\mathbb{N} = \{ a \in \mathbb{Z} : a > 0 \}
$$

## 링크/이미지
```
link
[표시텍스트](링크)

image
![대체텍스트](링크)
```

[구글](http://google.com)

![마크다운](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Markdown-mark.svg/600px-Markdown-mark.svg.png)
