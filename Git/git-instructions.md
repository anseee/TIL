#Git 명령어 모음

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

