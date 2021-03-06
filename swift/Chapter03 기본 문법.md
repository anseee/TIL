#Chapter03 기본 문법

##3.1 스위프트의 문법적 특성
구체적인 스위프트 언어를 학습하기 전에, 8가지 기본적인 내용을 먼저 정리해 보자.

###헤더 파일을 작성할 필요가 없다.
C프로그램은 전처리를 위해 헤더 파일과 소스 파일이 분리되어 있다. 헤더 파일에는 함수의 원형과 전역 변수의 선언들이 있고, 이러한 함수나 변수를 사용하기 위해 소스 파일에서 해당 헤더 파일을 읽어들인다. 

스위프트에서는 전처리를 위한 헤더 파일이 사용되지 않는다. 하나로 통합된 스위프트 파일 내에서 함수와 전역 변수, 클래스와 구조체를 선언하고 자유롭게 사용할 수 있다. 스위프트에서는 클래스나 구조체를 선언할 때 정의와 구현이 분리되어 있지 않고 하나로 통합되어있다.

###스위프트는 대소문자를 구분한다
```Swift
let A = 30 // 이 둘은 전혀 다른 상수이다.
let a = 30
```
메소드, 클래스, 구조체 등 모든 객체에서도 대소문자를 구분해야 한다. 함수와 메소드, 인스턴스명의 첫 글자는 소문자, 클래스와 구조체 프로토콜 확장채 등 객체의 첫 글자는 대문자로 설정한다.

###구문 끝의 세미콜론은 옵션이다.
스위프트는 자바스크립트나 파이썬처럼 구문의 끝을 세미콜론으로 마감해도 오류가 발생하지는 않는다. 사용자가 원하는 대로 넣어도 되고 안넣어도 된다. 하지만 이는 한 줄에 하나의 구문을 작성할 때에 한함이다. for 반복문의 조건절처럼 한 줄에 두 개 이상의 구문을 작성할 때에는 구문 해석기가 정확하게 해석할 수 없으므로 구문과 구문 사이에 세미콜론을 붙여 구문의 끝을 명시해줘야한다.

###엔트리 포인트(시작점)로 사용되는 main()함수가 없다.
스위프트는 엔트리 포인트 함수가 필요 없다. 대신 파일에서 맨 위에 있는 구문부터 순서대로 해석하고 실행한다. 즉 스위프트 내 특정 함수 내부에 작성된 구문이 아닌 한, 전역 범위에서 작성된 구문을 위해서부터 차례로 해석하여 실행한다. 스위프트로 작성된 앱은 main()함수의 엔트리 포인트가 없는 대신, @UIApplicationMain 어노테이션을 사용하여 앱의 시작 객체를 지정한다.

###문자열뿐만 아니라 문자도 큰따옴표를 사용한다.
스위프트에서는 문자열과 문자를 구문하지 않고 모두 큰따옴표("")를 사용하여 표시한다. 따라서 별도로 처리하지 않으면 문자와 문자열을 구분하기 어려우므로 문자를 저장하는 변수나 상의 타입을 Character형으로 명시해줘야한다.

###import 키워드를 사용하지만, 라이브러리와 프레임워크의 참조 용도이다.
스위프트에서는 import구문은 프레임워크나 외부 라이브러리를 사용하기 위한 목적으로만 사용한다. 같은 프로젝트 내에 선언된 다른 객체를 호출할 때는 별도의 import 구문 없이도 참조할 수 있도록 프로젝트 범위의 네임스페이스가 제공되기 때문이다.

###try ~ catch 방식의 예외 처리를 지원한다.

##3.2 변수와 상수
상수는 한 번 값이 저장되면 더는 변경할 수 없고, 변수는 필요에 따라 저장된 값을 몇 번이라도 다른 값으로 변경할 수 있다. 그래서 상수에는 변경되지 않는 데이터를 저장하고 변수에는 변경될 수 있는 데이터를 저장한다. 스위프트에서 상수는 컴파일 시점에 값이 입력될 필요는 없어도 반드시 한 번은 값이 대입되어야 한다.

변수에 저장된 값을 바꿀 때는 처음에 저장된 값과 같은 타입 형태이어야 한다. 예를 들어 변수에 처음 입력된 값이 정수였다면, 그 변수에 저장할 수 있는 값은 정수로 제한된다. 

이쯤에서 상수가 왜 필요한지에 대해 궁금한 독자들이 있을지도 모른다. 변수에 값을 저장해놓고 변경하지 않으면 그만이지, 왜 굳이 상수가 있어야 하냐고 생각할 수도 있을 텐데. 성능이나 다른 부분은 차치하고라도, 프로그래밍 소스 관리 목적상으로도 변하지 않을 값은 상수에 저장하는 것이 훨씬 효율적이다. 실수로 값이 변경되는 일을 막을 수 있고, 값의 성격을 명확히 분류되므로 관리하기도 쉽다.

어떤 경우에 변수를 사용하고 상수를 사용할지 기준이 모호하다면 일단 변수로 작성하면 된다. 컴파일러가 소스 코드에서 변경되지 않는 값이 있을경우 상수로 바꾸도록 컴파일러가 조언해준다.

###선언과 초기화
선언된 변수나 상수에 최초로 값을 저장하는 것을 초기화라고 한다.
```Swift
var year // 선언
year = 2016 // 초기화
```

###이름 짓기
영어, 숫자, 그리고 밑줄 이외에 다른 문자나 기호를 쓰는 것은 절대 권장하지 않는다. 이들 규칙만 준수하면 그 범위 내에서는 자유롭게 변수와 상수의 이름을 작성할 수 있다.

## 자료형
우리가 프로그래밍을 하다가 값을 입력받아야 하는 상황이고, 이벽받은 값이 1이라고 가정해보자. 이 값은 숫자일까? 문자일까?
이 갑ㅅ을 우리는 문자로 받아들일 수 도 있고, 숫자로 받아들일 수도 있다. 만약 숫자로 받아들인다면 이 값을 이용하여 더하거나 빼거나 곱하고 나누는 등 연산이 가능하다. 말 그대로 숫자이니까. 하지만 문자로 받아들인다면 어덯게 될까? 문자로 받아들인 1은 아무런 연산이나 게산도 할 수 없다. 대신 다른 문자열 앞이나 결헙하여 붙일 수는 있다. 문자1은 비록 숫자와 모습이 같지만 다른 문자와 마찬가지로 문자다. 사실 컴퓨타가 문자 "1"을 내부적으로 받ㄹ아들일 때는 아스키코드 49로 변환시켜 저장한다. 반면 숫자 1은 그냥 1로 저장한다. 이처럼 컴퓨터는 값을 받아들일 때 내부적으로는 실제로 받아들이는 값이 달라서 인간처럼 편리하게 연산을 처리할 수 없다. 그래서 문자 "1"이용하여 연산을 처리하면 문자 "1"을 숫자 1로 전환한 다음에야 연산할 수 있다.

그렇다면 숫자는 숫자 문자는 문자끼리 연산을 하는데, 만약 숫자와 문자를 결합하면 어떻게 될까? 이것은 처리가 불가능하다. 결합 연산을 처리하기 위해서는 어느 한쪽의 타입이 통일되어야 한다. 하지만 어떤것으로 통일해야할지 모른다. 스위프트에서는 문자와 숫자가 결합하는 경우는 오류로 처리한다. 일단 상수나 변수에 할당된 값을 타입에 따라 명확하게 구분하지 않으면 어떻게 처리해야 하는지에 대한 기준이 모호해진다. 또한 문자와 숫자의 차이에 따라 준비해둘 메모리 공간의 크기 역시 달라져야 하는 것도 하나의 이유다. 이처럼 몇 가지 종류의 타입을 정의하고 그에 맞추어 사용하는데 이를 데이터 타입 즉 자료형이라 한다.

###기본 자료형
Int integer의 줄임말이며, 그리고 부호가 있는 숫자를 표현하며 CPU에 따라 그 범위가 결정된다. 가령 8bit CPU를 가진 컴퓨터라면 Int형에 2의 8승인 256개까지 정수를 저장할 수 있고 그의 범위는 -128 ~ 127까지다, Int를 이용한 서브 자료형도 별도로 제공한다. Int8, Int32, Int64이고 여기서 숫자는 범위를 나타낸다. 우리는 Int 즉 타입을 지정할때 이것에 바로 데이터라고 정의했다 자료구조에서 ADT 추상 데이터 타입이란 말이 있다. 우리는 이것이 어떻게 내부적으로 동작하는지는 모르지만 이것을 사용하면 어떻게 동작한다는것을 안다. Int도 마찬가지다 우리가 Int가 어떻게 정수를 만들어주는지는 내부적인 로직은 몰라도 선언을하면 알아서 처리해준다. 내부를 한번들여다 보자 Int는 사실 SignedInteger를 구현한 구조체의 일종이다. 내부 코드는 책을 보도록 하자. 내부를 보면 여러 메소드나 속성들이 있는 것을 볼 수 있다. 여기서 두가지 속성만 보도록 하자 보면 max와 min을 볼수 있는데 최대값과 최소값이 있다. 이것을 플레이그라운드에서 찍어보면 CPU에서 비트수만큼 표현하는것을 볼 수 있다. Int.max, Int.min 그리고 Int는 카멜레온처럼 CPU 연산 비트수만 큼 변화하며 컴퓨터에 따라 달라진다고 이야기했다. 만약 64비트 컴퓨터에서 Int.max와 Int64.max를 비교하면 두 값이 동일하다는것을 알 수 있다.

####UInt
UInt는 Int와 다르게 부호가 없는 정수를 표현한다 우리가 알고 있는 자연수를 말이다. 0부터 시작하면서 최대 값은 (Int 서브 자료형의 최대값 * 2) +1로 표현 할 수 있다. 

####Double & Float 
프로그래밍을 하다 보면, 소수점이 포함된 실수 값을 저장해야 하는 경우도 무척 많다. 여기서 사용되는 자료형이 Double, Float이다.
실수형 값을 저장할 수 있다는 공통점이 있지만 Double은 64bit 부동소수점 자료형으로서 32bit 부동 소수점 자료형인 Float보다 더 넓은 소수점을 저장할 수 있다. 재미있는 것은 스위프트에서는 Float32, Float64형의 서브 자료형을 제공한다. 하지만 이것은 실제로 존재하는 객체가 아닌 타입알리어스에 의해 정의된 타입이다. 타입알리어스란 타입을 가리키는 표현만 달리하는 것이다.
실제 코드를 보면 Float32는 Float을, Float64는 Double를 표현하는것을 볼 수 있다.

####Bool
true/false 두 가지 종류의 값만 가질 수 있는 자료형으로서 주로 논리값을 저장하기 위해 사용된다.

####String
가장 많이 사용되는 자료형중 하나이다. 문자열을 저장때 사용한다. NSString 객체를 많이 보아 왔을텐데 (기존 아이폰 개발자) 이 객체는 파운데이션 프레임워크에서 문자열을 쉽게 다루기 위해서 제공하는 객체이다. 하지만 String형은 스위프트 언어에서 제공되는 기본 자료형이므로 프레임워크를 호출하지 않아도 사용할 수 있는 차이점이있다.

String형에 저장되는 문자열은 Character형의 문자가 모여서 이루어진 일종의 집단 자료형이다.  

####Chracter 
앞서 등장한 String은 여러 글자로 이루어진 문자열을 저장할 수 있는 집단 자료형이지만. Chracter는 한 개의 문자를 저장할 수 있는 단일 자료형이다. String 형에 저장된 문자열을 한 글자씩 분해하면 Character 형된다.

스위프트는 Character 형 데이터의 값을 표현할 때도 String 형과 마찬가지로 큰따옴표("")를 사용합니다. 

###타입 추론과 타입 어노테이션

```Swift
var day = 7

var year : Int
year = 2015
```

앞의 예제처럼 스위프트에서 변수는 선언과 초기화를 동시에 할 수도 있지만, 선언과 초기화를 분리하여 선언만 해 놓고, 필요한 시점에서 초기화를 하도록 분리할 수도 있습니다. 그런데 year라는 이름의 변수를 보면, 변수를 선언할 때 클론(:)과 함께 자료형을 명시해 놓는 것을 확인할 수 있습니다. 왜 이런 것이 추가되었을까?

타입 어노테이션은 변수나 상수를 선언할 때 그 타입을 명시적으로 선언해주어, 여기에 어떤 타입의 값이 저장될 것인지를 컴파일러에게 명확하게 알려주는 문법이다. 

그런데 지금까지 변수나 상수를 선언할 때 타입을 명시해주지 않았는데 어떻게 된 걸까? 스위프트의 특성중 안전성이라는 항목이 있다. 설계에 의한 안전성을 담보하기 위해 스위프트가 여러 장치를 도입했다는 것이 핵심 내용이다. 그 중의 한가지가 바로 타입 추론 기능이다.

타입 추론은 변수나 상수의 타입을 정할 때 개발자가 직접 타입을 지정해 주지 않아도 초기화 될 때 입력되는 값을 분석하여 컴파일러가 스스로 적합한 타입을 추론하여 적용하는 기능이다. 

그렇다면 언제 타입 어노테이션을 사용하고 말아야할까?
* 변수나 상수의 선언과 초기화를 분리 할 경우
* 타입 추론으로 얻어지는 타입이 아닌 다른 타입을 직접 지정할 필요가 있을 경우
* 가독성을 위해 일부로 다는 경우

###탙입이 서로 다른 변수의 결합
프로그래밍 과정에서는 서로 다른타입의 변수나 상수를 결합해야 하는 경우가 간혹 발생한다. 그러나 스위프트에서 서로 다른 타입의 변수나 상수끼리는 결합 연산이 불가능하다. 다행히 스위프트의 기본 자료형 객체들은 다른 타입의 값을 자신의 타입에 맞게 변환하여 새로운 객체를 만드는 방법을 제공한다. String형 String구조체의 인스턴스를 만드는 String() 생성자로 이를 지원한다. 그래서 184란 정수값이 있다고 가정할때 String(184)로 초기화 하면 "184"라는 문자열 인스턴스를 만들어낼 수 있다.

요약하면 정수형 값을 문자열로 바꾸고 싶을 때 다음처럼 String() 생성자를 사용하면 새로운 문자열 인스턴스를 만들 수 있다.

문자열을 정수형이나 실수형으로 바꾸고자 할때에도 이와 비슷한 방식이 적용된다. 문자 열울 정수형으로 바꾸려면 다음과 같이 Int() 생성자를 사용하여 새로운 정수 인스턴스를 만들면 된다. 

####문자열 템플릿
스위프트 역시 변수나 상수의 값을 문자열 속에 포함하기 쉽도록 문자열 템플릿을 제공한다

```Swift
let name = "마스터"
let birthY = 80
let birthM = 2
let birthD = 29

let profile = "\(name)님은 \(birthY)년 \(birthM)월 \(birthD)일에 탄생하심"
print(profile)
```
위와 같은 코드는  어떻게 출력이 될까?  "마스터님은 80년 2월 29일에 탄생하심" 이란 문자열로 출력된다.

문자열 탬플릿을 이용하면 괄호내부에서 간단한 연산도 할 수 있습니다.

##연산자
다른 연산자는 정리 안하고 스위프트에서 새롭게 제공되는 범위 연산자에 대해서만 정리했다.

###범위 연산자
범위 연산자는 스위프트의 독특한 연산자이다. 주어진 값으로 특별한 연산을 수행하는 것이 아니라 주어진 값들 사이의 범위를 표현하는 연산자로서, 닫힌 범위 연산자와 반 닫힌 볌위 연산자 두 가지 종류가 있다.

####닫힌 범위 연산자(closed range operator)
닫힌 범위 연산자는 주어진 피연산자 a,b 를 포함하는 범위를 나타내는 연산자이다. 닫힌 범위 연산자를 나타내는 기호는 주어진 두 개의 피연산자 사이를 세 개의 점으로 표현하는 것으로서 1부터 5까지의 범위를 1과 5를 포함해서 나타내고자 할 경우 다음과 같이 표현한다.

1...5

이렇게 표시했을 때의 범위 연산자가 나타내는 값은 1,2,3,4,5이다.

####반 닫힌 범위 연산자
1..<5

이것은 1,2,3,4까지 나타낸다 한쪽(왼쪽)범위만 포함하고 오른쪽 범위는 포함하지 않는다. 범위연산자는 for ~ in 과 같은 반복문에서 많은 사용을 한다.


