#옵셔널

옵셔널은 안정성을 위해 만들어졌다. 그 안전성이랑 무엇인가? 예를 들어보자. 우리는 "123"이란 문자열을 숫자로 변환하고 싶다. 스위프트에서는 Int()생성자를 이용해서 손쉽게 변환할 수 있을것이다. 그런데 Int("123")이 아닌 Int("swift")와 같은 실제 우리가 봐도 문자인 값을 넣게된다면 어떻게 될까? 이것은 임의적으로 넣은것이지만 프로그래밍을 하다보면 잘못된 값이 들어갈 수 있는 (nil같은) 것을 미리 방지하는것이다. 

옵셔널은 두가지 경우의 값만 갖고 있다. 첫번째 nil이 아닌경우 두번째 nil인 경우. 이 경우 만약 Int("123")과 같은 올바른 값이 들어가면 Optional(123), 잘못된 값이면 nil을 반환할 것이다. 우리가 주목해야할 점은 nil이 아닌경우에도 optional이라는 특수한 단어가 결과값에 둘러쌓여있다는것이다. optional wrapping이란 개념을 사용해서 올바른 값을 추출해 낼수 있다. 하지만 너무 모든 변수들을 옵셔널로 설정하게 된다면 코드 자체가 매우 복잡해지므로 정말로 nil이 들어올 것 같은 값에 옵셔널을 설정해야할 것이다.

