#Git 명령어 모음

##git pull 충돌시 명령. git stash
*git stash
*git pull origin master

##원격 저장소에서 클론하기
* git clone 주소

##원격 저장소에 푸쉬하기
* git push origin master

##기존 원격 주소에서 새롭게 변경된 원격주소로 변경하고자 할때
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

## icu required (brew install icu4c or apt-get install libicu-dev) 
* brew install icu4c 명렁어 치고 나서
* sudo gem install gollum 하니까 설치됨..

##깃 플로우 사용시 팁

###릴리즈 , 핫픽스 이슈를 고칠때 모르고 마스터 또는 개발에서 코드를 수정한 상황
당황하지 않고, 터미널을 연다. 명령어로 git checkout -b release(또는 hot fix)/브런치이름 master(또는 develop)를 입력하면 변경되어있다.
만약 로컬에 master 또는 develop이 없을경우는 맨 뒤에 origin/master(develop)으로 하면 가져온다.
