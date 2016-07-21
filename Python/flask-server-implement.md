#AWS서버 올리기

- sudo apt-get update
- sudo apt-get install git

- 서버 디렉토리 주소 /home/ubuntu/albumserver/.git/

- git init
- git config --global user.name "Your Name"
- git config --global user.email you@example.com

- 복사 위치 디렉토리로 이동
- git clone https://github.com/anseee/Album.git

- [그 전에 python2 설치]
- sudo apt-get install build-essential checkinstall
- sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

- cd /usr/src
- sudo wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz

- sudo tar xzf Python-2.7.10.tgz

- cd Python-2.7.10
- sudo ./configure
- sudo make altinstall

- python2.7 -V

- 디렉토리 최하단까지 내려가고

- cd home/ubuntu/Albumserver/Album
- source myvenv/bin/activate

- 파이썬 패키지  매니저 설치
- apt-get -y install python-pip

- pip 버전 확인
- pip -V

- sudo pip install flask
- sudo pip install sqlalchemy
- sudo apt-get install python-psycopg2

## Postgresql 설치하기

- sudo apt-get install postgresql
- sudo apt-get install postgresql-doc-8.4
- sudo apt-get install pgadmin3

- sudo apt-get install edit
- sudo apt-get install postgresql

- sudo -u postgres psql
- ALTER USER postgres WITH ENCRYPTED PASSWORD ‘password’
- \q

- sudo -H /bin/bash

- 버전 확인 잘 할것
- vi /etc/postgresql/9.3/main/postgresql.conf

- listen_addresses = 'localhost' 를 주석 풀고
- listen_addresses = '*' 로 수정.
- i 누르고 수정
- esc 누르고 :wq 입력후 엔터

- vi /etc/postgresql/9.3/main/pg_hba.conf

- IPv4 local connections:
- host     all        all        0.0.0.0/0        trust -- 이렇게 수정
- i 누르고 수정
- esc 누르고 :wq 입력후 엔터

- service postgresql restart

##Using PostgreSQL Roles and Databases

- sudo -i -u postgres
- psql
- \q 나가기

- psql
- \password '계정'
- createdb '데이터베이스 이름'
- \list 데이터베이스 목록
- psql -U postgres -d ansee
- \d
- \dn

## 테이블 만들기
CREATE TABLE album(
   album_key INT PRIMARY KEY     NOT NULL,
   title           TEXT,
   regi_date            TEXT,
   thumbnail        TEXT
);

