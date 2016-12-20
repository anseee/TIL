# Git 명령어 모음

## git pull 충돌시 명령. git stash
* git stash
* git pull origin master

## 원격 저장소에서 클론하기
* git clone 주소

## 원격 저장소에 푸쉬하기
* git push origin master

## 기존 원격 주소에서 새롭게 변경된 원격주소로 변경하고자 할때
### 기존 주소 확인
* git remote -v
* origin  git@github.com:USERNAME/REPOSITORY.git (fetch)
* origin  git@github.com:USERNAME/REPOSITORY.git (push)

### 새로운 주소로 변경하기
* git remote set-url origin https://github.com/USERNAME/OTHERREPOSITORY.git

### 다시 확인하기
* git remote -v
* origin  https://github.com/USERNAME/OTHERREPOSITORY.git (fetch)
* origin  https://github.com/USERNAME/OTHERREPOSITORY.git (push)

### remote 저장소 이름 변경하기
* git remote rename REMOTE_NAME NEW_NAME
* e.g.) git remote rename origin new-origin

## icu required (brew install icu4c or apt-get install libicu-dev) 
* brew install icu4c 명렁어 치고 나서
* sudo gem install gollum 하니까 설치됨..

## 깃 플로우 사용시 팁

### 릴리즈 , 핫픽스 이슈를 고칠때 모르고 마스터 또는 개발에서 코드를 수정한 상황
당황하지 않고, 터미널을 연다. 명령어로 git checkout -b release(또는 hot fix)/브런치이름 master(또는 develop)를 입력하면 변경되어있다.
만약 로컬에 master 또는 develop이 없을경우는 맨 뒤에 origin/master(develop)으로 하면 가져온다.

## .gitattributes를 이용하여 내가 원하는 파일은 merge시 반영되지 않도록 설정하기
1. 터미널을 이용하여 .gitattributes파일을 만든다
2. 해당 파일안에 merge할때 반영되지 않도록 원하는 파일명을 적고 옆에 merge=ours를 붙인다
3. 저장후, git config --global -e 명령어를 입력하여 해당 파일안에서 아래 명령어를 입력한다
<pre>
[merge "ours"]
     name = "Keep ours merge"
     driver = true
</pre>

### Merge 전략

파일마다 다른 Merge 전략을 사용하도록 설정할 수 있다. Merge 할 때 충돌이 날 것 같은 파일이 있다고 하자. Git Attrbute로 이 파일만 항상 타인의 코드 말고 내 코드를 사용하도록 설정할 수 있다.

이 설정은 다양한 환경에서 운영하려고 만든 환경 브랜치를 Merge 할 때 좋다. 이때는 환경 설정과 관련된 파일은 Merge 하지 않고 무시하는 게 편리하다. 브랜치에 database.xml이라는 데이터베이스 설정파일이 있는데 이 파일은 브랜치마다 다르다. Database 설정 파일은 Merge 하면 안된다. Attribute를 아래와 같이 설정하면 이 파일은 그냥 두고 Merge 한다.


