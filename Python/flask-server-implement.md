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