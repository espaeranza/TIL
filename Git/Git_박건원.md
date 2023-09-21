# Git
- 코드 관리 도구(Source Code Management, SCM) -> 버전을 통해 관리
- 코드 협업도구
- 코드 배포도구

## 코드 관리 도구로서의 Git
- 버전 관리 도구(Version Control System): 버전을 통해 코드를 관리하는 도구
- 분산형 버전 관리 도구(Distributed VCS): 분산된 형태로 버전을 통해 코드를 관리하는 도구

## Git Commands(명령어)
> Git은 폴더/디렉토리 단위로 프로젝트/저장소/코드를 관리한다.
>> git[명령어]

### (1) `git init`
Git으로 코드 관리를 시작
- 코드 관리 단위(기준): 폴더
- `(master)` : 현재 ~~브랜치명~~
- `.git` 폴더 생성: Git이 관리와 관련된 파일

```
Initialized empty Git repository in C:/Users/Gun Won Park/intro/.git/
-> 비어있는 Git 저장소/프로젝트를 시작함(.git)
```

1. `.git` 폴더 생성
2. `(master)`또는 `(main)` 프롬프트(브랜치 이름)

#### Git 프로젝트 관리를 중단: `.git` 폴더 삭제
- rm -r 명령어 사용

### (2) `git status`
현재 상태를 출력(Git에게 현재 상태를 물어봄)

- 최초상태 `git init 직후`
```
On branch master -> master라는 branch에 있음

No commits yet -> commit 아직 없음

nothing to commit (create/copy files and use "git add" to track)
-> commit할 것이 없음(추척하려면 파일을 만들고 gid add를 사용해)

```

- 파일 생성 후 `touch 파일`
```
On branch master -> 상동

No commits yet -> 상동

Untracked files: -> 추적되지 않은 파일이 있음
  (use "git add <file>..." to include in what will be committed)
        a.txt
  -> a.txt 파일이 있는데, commit될 것에 포함시키려면 git add [파일명]을 사용하시오.
nothing added to commit but untracked files present (use "git add" to track)
-> commit할 것이 없어, 그런데 추적되지 않은 파일들은 있음.

```
- `git add` 직후

```
On branch master -> 상동

No commits yet -> 상동

Changes to be committed:-> commit할 변화가 있음
  (use "git rm --cached <file>..." to unstage)
        new file:   a.txt
  -> unstage하고 싶으면 git rm --cached를 쓰세요
```

- `git commit` 이후
```
On branch master -> 상동
nothing to commit, working tree clean
-> commit 할 게 없어요. 작업 폴더는 깔끔해요.
```
- 파일 수정 후
```
On branch master
Changes not staged for commit:
-> commit하기 위해 stage 되지 않은 변경 사항이 있어요.
(use "git add <file>..." to update what will be committed)
(use "git restore <file>..." to discard changes in working directory)
modified: test.txt
no changes added to commit (use "git add" and/or "git commit -a")
```

### (3) `git add [파일/폴더]`
- stage에 파일 추가
- commit을 위한 stage
  - `git add .` : 현재 폴더의 모든 변경 사항 stage

### (4) `git commit -m "커밋 메세지"`
> Message와 함께 버저닝(Versioning) == 커밋(Commit). 
> 
> commit == 버전을 생성 == 현재상태의 스냅샷 촬영

- 처음으로 commit을 할 경우
```
Author identity unknown
-> 작자미상
*** Please tell me who you are.
-> 당신이 누군지 알려주세요.
Run
-> 아래의 명령어를 실행주세요.
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

- `git config` 설정 후( vim 에디터 창)
```
# Please enter the commit message for your changes.
-> 변경사항에 대한 commit message를 입렵해주세요.
# Lines starting with '#' will be ignored, and an empty message aborts the
commit.
-> #로 시작하는 라인은 무시됩니다. 아무것도 없는 메시지는 종료됩니다.
# On branch master
#
# Initial commit
#
# Changes to be committed:
# new file: test.txt
```

### (5) `git config`
Git에 관한 설정
- `git config --global user.email "이메일"` : global(전역으로) user의 email을 설정
- `git config --global user.email` : 설정값 확인

### (6) `git log`
현재까지의 commit을 출력
- `git log` 출력화면
```
commit 1a7d9384d2f9a064e2ddb4719306defeb51ac3cf (HEAD -> master)
Author: John Kang <hphk.john@gmail.com>
-> 작성자
Date: Tue Mar 16 15:55:10 2021 +0900
-> 날짜
first commit
-> 커밋 메시지
```
- `git log --oneline` : 한줄로 출력
```
7c7abf0 (HEAD -> master) Add title
1a7d938 first commit
```

### (7) `git remote`
- `git remote add [저장소이름] [저장소주소]` : git remote add origin https://github.com/hkeryfonttlxisdrlw/basic_git
  - git에게 원격저장소(remote) 추가(add)를 명령
- 저장소이름: `origin`
- 저장소주소: https://github.com/hkeryfonttlxisdrlw/basic_git