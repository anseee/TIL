#PYCON APAC 2016
Sungwon Park이 이번 파이콘 컨퍼런스를 다녀와서 정리한 내용들입니다.

## 2016. 08. 13. 토요일 일정

#### 오프닝 (09:30)
#### 키노트 (Wes McKinney)
#### 키노트 (Jacob Kaplan-Moss)

#### Django로 쇼핑몰 만들자 (정경업) 102 12:40
* 제품, 장바구니, 주문 ,결제, 위항목들 관리 기능
* 재고 회원 배송 확인 이메일 알림 정산
* 마케팅용 페이지 할인 판매 매출보고서 통계 애이피아이
* 쇼핑몰 부분만 만듬
* 이미지 다루기 : CDN S3 CF CloudFront
* 썸네일은 : django-versatileimagefield
* 추상 모델 : 같은 일 두번 안함. 코드 읽기 힘듬, 구성이 어려움 구성 잘못하면 지옥을 맛봄
* 제품이 문제가 되는게 답이 없다 너무 정보가 많음. 보통 두가지 어떻게 팔고 어떻게 보여줄것인지. 운영 마케팅 
* 답이 없다 모든게 바뀐다. 구조를 최대한 유연하게 짜놔야함. 제품모델을 짜놨는데 잘 얽혀있어야함. 제품 가격정보가 많이 쓰인다. 제품 설명같은 경우는 이미지 설명 써가지고 팔릴 만하게 써야하는데 
* 모델 필드를 포함하고 있으면 추상 모델, 필드가 없고 함수나 동작은 믹스인
* 장고의 꽃 CBV 뷰가 편해짐
* 모델 설계만 잘하면 끝
* 상품 고르기, 장바구니에 담기, 주문서 작성, 결제, 제품 준비및 배송 혹은 결제 취소, 배송완료
* 배송 완료한 물건에 대한 문제 발생 변심
* 환불 /교환 신청
* 이후 물건 상태에 따라 상당히 복잡한 일들일 발생
* 대부분 사람이 해결하고 기록을 남김(대충)
* 저는 나누었다 주문서는 역주문서 
* 주문 과정 기록은 필수.
* 아임포트 PG사 연동 서비스 대응 빠름.
* pip install import-rest-client
* 장고어드민 개조함
* 

#### Django, Flask 고민없이 개발하고 서비스하는 PaaS, IBM Bluemix (공진기) 104 13:20
*

#### 파이썬을 활용한 똑똑한 주식투자 (시스템 트레이딩) (김대현) 103 14:40
*

#### 파이썬으로 광고 효과 측정하기 (오재혁) 103 15:40
*

#### High-performance Networking with Python (김준기) 16:40
*

## 2016. 08. 14 (일요일)

#### 파이썬을 활용한 교육용 프로그래밍 언어, 리보그 (김무훈)
*
#### RPC 프레임워크 제작 삽질기 (홍민희)
*
#### Django vs Flask, 까봅시다! (김도현)
*
#### The stories about Django Girls Taipei (Michelle Leu)
*
#### 주피터: 파이썬 노트북, 그리고 파이썬 노트북을 넘어서 (김대권)
*
#### Easy contributable internationalization process with Sphinx (Takayuki Shimizukawa)
*
#### 검색 로그 시스템 with Python (김동문)
*
#### Linux Kernel instrumentation in Python (Feng Li)
*
#### 10만 라인, 26280시간의 이야기 (정민영)
*
#### Python 으로 19대 국회 뽀개기 (이홍주)
*
#### 클라우드 상에서 Selenium을 이용한 Django 기능 테스트 자동화 (박종현)
*
#### Decision making with Genetic Algorithms using DEAP (송치성)
*
#### Python Profiling and Performance Tuning (Joe Gordon)
*
#### 어느 흔한 파이썬 개발자의 집 소개 (김영근)
*
#### 파이썬 데이터 분석 3종 세트 - statsmodels, scikit-learn, theano (김도형)
*
#### 파이썬 삼총사 (박현우)
*
#### Python으로 만드는 neovim async plugin (송재학)
*
#### Django에서의 대용량 트래픽 처리 - 병목을 찾아라 (서주은)
*
#### Profiling the Unprofilable (Dmitry Trofimov)
*
#### 지적 대화를 위한 깊고 넓은 딥러닝 (Feat. TensorFlow) (김태훈)
*
#### Debugging Tips and Tricks (Roy Hyunjin Han)
*

