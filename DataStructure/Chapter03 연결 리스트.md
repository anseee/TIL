#Chapter03 연결 리스트

##추상 자료형(Abstract Data Type)
이제 본격적인 자료구조에 들어갔지만, 1,2 챕터도 매우 중요하다는 사실 잊지말자. 과거 자료구조에 ADT를 수록하고 출판한 책은 없었다. 하지만 코드가 공학적인 측면으로 정의되고 소프트웨어 공학적 측면에서 ADT라는것이 나왔다. 이 추상형 자료형은 매우 중요하다. 이 자료형을 알게되면 코드 작성능력에 있어 매우 세련미가 더해진다. 또한 코드를 보는 눈이 한층더 시야가 넓어진다. 추상 자료형이라는 용어의 개념이 모호하다 하여 이에 대한 이해 없이 자료구조를 공부하는 경우도 있는데 그런일은 없도록 하자.

ADT는 기능의 완성과정을 나열한것이고 순수하게 기능이 무엇인지를 나열한것이다. 추상 자료형(자료형이라고 해도된다.)은 기능이다. 
그러면 자료형이 왜 데이터가 아니고 기능일까? int num = 10;이란 코드를 보자 우리는 여기에 있는 int를 보고 데이터라고 이야기 한다. 그렇다면 이것이 어떻게 동작하는 과정을 아는가? 또한 int num = 10;이란 코드에서 기능적 측면에서 보면 이것은 초기화라고 하며 대입연산이 핵심이다. num1 + num1 에서 핵심은 +라는 연산기호다 여기서 그러면 질문이 나올수 있다. 구조체의 정의는 기능이라고 할 수 있는가? 정의만 했지 구조체 안에 기능은 없지 않는가?

자료형에 대해 자세히 알아보자 구조체를 이용해서 지폐와 동전의 저장이 가능한  지갑을 정의해 보겠다. 

```C
typedef struct _wallet
{
	int coin100Num;
    int bill500Num;
} Wallet;
```

이렇게 구조체를 정의하였다면 다음과 같이 이야기할 수 있다.
"구조체를 기반으로 지갑을 의미하는 Wallet이라는 자료형을 정의했다!". 우리가 알고 있듯 Wallet이라는 자료형의 정의이다. 그런데 컴퓨터 공학적 측면에서 위의 구조체정의만으로 Wallet이라는 자료형의 정의가 완성된것은 아니다. Wallet을 기반으로 하는 연산의 종류를 결정하는 것도 자료형 정의의 일부로 보야아 하고, 이러한 연산의 종류가 결정되었을 때 자료형의 정의는 완성 된다.

C언어는 1. 함수 -> 함수 2.Data(구조체) + 함수 3. 구조체(함수)(자료형 정의) + 함수 3번으로 생각하는것이 가장 좋음.
우리가 앞서 int는 기능적 측면에 대해 이야기했다. 구조체에서 데이터만 정의하는것으로 끝나는것은 아니다 앞서 설명한것 처럼 연산들을 정의 해야한다. 연산은 c언어에서 제공하는 그러한 기본 연산을 의미하는 것이 아니고 wallet을 기반으로 제공할 수 있는 기능 관련 연산을 의미하는 것이다. 돈을 꺼내는 연산 돈을 넣는 연산 등등의 기능들을 말이다

```C
int TakeOutMoney(Wallet *pw, int coinNum, int billNum);
void PutMoeny(Wallet *pw, int coinNu, int billNum);
```
결론적으로 자료형의 정의에 기능 또는 연산과 관련된 내용을 명시할 수 있다는 것이다. 따라서 추상 자료형이라 하여 그것에 기능 혹은 연산과 관련된 내용을 명시할 수 없다는 생각은 버리도록 하자. 자료형의 정의에서 연산이 가장 중요하니 이 사실을 기억하도록 하자.

구조체 Wallet도 자료구조의 일종이다. 라고 말했을때, 우리는 공감할 수 있는가? 앞서 Chapter01에서는 자료구조가 무엇인지 간단히 설명하였다. 그리고 그 관점에서 보면 Wallet도 자료구조의 일종이다. 이는 지갑이라는 데이터를 표현한 결과이기 때문이다. 이제 구조체 Wallet의 추상 자료형을 정의할 차례인데, 정리 차원에서 앞서 말한 다음 문장을 다시 한번 보이고자 한다.

구체적인 기능의 완성과정을 언급하지 않고, 순수하게 기능이 무엇인지를 나열한 것을 가리켜 '추상 자료형'또는 간단하게 ' ADT'라고 한다.

추상 자료형의 정의는 기능을 명세하는것이다. 언어에는 의존하지 않는다. 학문적 측면으로 사용설명서라는 것이다.(이런 기능이 있고 이렇게 쓰면됨) Wallet의 멤버 정의를 알고 내부적으로 어떻게 구현되어있는지 몰라도 어떤 기능이 있다는 것을 알면 사용 가능하지 않는가? 명세서는 책에 나와있으니 참고하도록 하자

다시 말히지만, 구조체 Wallet의 멤버가 어떻게 구성이 되어 있는지를 알 필요는 없다.

###자료구조의 학습에 ADT의 정의를 포함합니다.
리스트 자료구조라는 것을 배우게 될텐데, 이에 대한 학습 순서를 다음과 같이 가져가고자 한다.
1. 리스트 자료구조의 ADT를 정의한다.
2. ADT를 근거로 리스트 자료구조를 활용하는 main함수를 정의한다.
3. ADT를 근거로 리스트를 구현한다.

위에서 2번과 3번이 순서가 듸바뀌었다고 생각할 수도 있다. 보통은 리스트를 완전히 완성한 다음에 이를 활용하는 main함수를 보익기 때문이다. 하지만 그렇게 되면 ADT는 다음 본질을 이해하는데 방해가 되기 때문에 위의 순서대로 학습하고자 한다.

"리스트 사용자에게 사용방법 이외의 불필요한 부분까지 알도록 부담주지 않는다!."

##배열을 이용한 리스트 구현

###리스트의 이해
리스트는 연결 리스트를 의미하나요? 라는 질문에 우리는 자료구조를 공부한 분들을 대상으로도 자료구조를 강의한 적이 있다. 그리고 그때마다 위와 같은 질문을 한다. 그러면 보통은 YES라는 답을 듣는다. 하지만 이는 정답이 아니다. 리스트라는 자료구조는 구현방법에 따라서다음과 같이 크게 두 가지로 나뉘기 때문이다.

* 순차 리스트 : 배열을 기반으로 구현된 리스트
* 연결 리스트 : 메모리의 동적 할당을 기반으로 구현된 리스트

하지만 이는 리스트의 구현방법의 차이에서 비롯된 것이기 때문에 이 둘의 ADT가 동일하다고 해서 문제될 것은 없다. 물론 각각의 특성적 차이 때문에 ADT에 차이를 두기도 한다.

"ADT가 같을 수도 있고 다를 수도 있다? 그럼 각종 자료구조들의 ADT는 표준이 아닌가요?"

그렇다! 표준이 아니다. 때문에 정의하는 사람이나 회사에 따라서 ,다시 말해서 필요에  따라서 ADT에도 차이가 난다. 물론 피료에 따라서 확장도 가능하다. 하지만 그렇다고 해서 해당 자료구조의 기본 특성을 무시하는 형태로 ADT가 정의되는 것은 아니다. 자! 그럼 리스트의 ADT 정의를 위해서 리스트 자료구조의 가장 기본적이고도 주요한 특성을 소개하겠다.

"리스트 자료구조는 데이터를 나란히 저장한다, 그리고 중복된 데이터의 저장을 막지 않는다."

###리스트의 ADT

void ListInit(List *plist);
- 초기화할 리스트의 주소 값을 인자로 전달한다.
- 리스트 새성 후 제일 먼저 호출되어야 하는 함수이다.

void LInsert(List *plist, LData data);
- 첫 번째 데이터가 pdata가 가리키는 메모리에 저장된다.
- 데이터의 참조를 위한 초기화가 진행된다.
- 참조 성공시 1, 실패 시 0 반환

int LNext(List *plist, LData *pdata);
- 참조된 데이터의 다음 데이터가 pdata가 가리키는 메모리에 저장된다.
- 순차적인 참조를 위해서 반복 호출이 가능하다.
- 참조를 새로 시작하려면 먼저 LFirst 함수를 호출해야 한다.
- 참조 성공 시1, 실패시 0을 반환

LData LRemove(List *plist);
- LFirst 또는 LNext함수의 마지막 반환 데이터를 삭제한다.
- 삭제된 데이터는 반환된다.
- 마지막 반환 데이터를 삭제하므로 연이은 반복 호출을 허용하지 않는다.

int LCount(List *plist);
- 리스트에 저장되어 있는 데이터의 수를 반환한다.

여기서 왜 LNext를 이용해서 가리키면 될것을 왜 LFirstr존재 할까? 리스트에 데이터가 10개가 저장되어있다고 가정하자. 그리고 데이터를 계속해서 조회하다가 맨처음부터 돌아가려면 어떻게 해야할까? LNext만 있다면 그것이 매우 비효율적이고 어려울것이다. 그래서 초기화를 위해 LFirst란 함수가 존재하는것이다.


###연결 리스트 직접 구현하기 실습 진행
지우는 함수는 아직 구현 못함.

```C
//
//  ArrayList.h
//  LinkedList
//
//  Created by 박성원 on 2016. 12. 4..
//  Copyright © 2016년 sungwon. All rights reserved.
//

#ifndef ArrayList_h
#define ArrayList_h

#define TRUE 1
#define FALSE 0

#define LIST_LEN 100
typedef int LData;

typedef struct __ArrayList { // 배열기반 리스트를 정의한 구조체
    LData arr[LIST_LEN]; // 리스트의 저장소인 배열
    int numOfData; // 저장된 데이터의 수
    int curPosition; // 데이터 참조위치를 기록
} ArrayList;

typedef ArrayList List;

void ListInit(List *plist); // 초기화
void LInsert(List *plist, LData data); // 데이터 저장

int LFirst(List *plist, LData *pdata); // 첫 데이터 참조
int LNext(List *plist, LData *pdata); // 두 번째 이후 데이터 참조

LData remove(List *plist); // 참조한 데이터 삭제
int LCount(List *plist); // 저장된 데이터의 수 반환

#endif /* ArrayList_h */

//
//  ArrayList.c
//  LinkedList
//
//  Created by 박성원 on 2016. 12. 4..
//  Copyright © 2016년 sungwon. All rights reserved.
//

#include "ArrayList.h"

void ListInit(List *plist) {
    plist->numOfData = 0;
    plist->curPosition = -1; // 아무런 위치를 참조 하지 않음을 의미 -1은 의미 부여에 따라 다를 수 있다.
}

void LInsert(List *plist, LData data) {
    
    if (plist->numOfData <= LIST_LEN) {
        plist->arr[plist->numOfData] = data;
        plist->numOfData += 1;
    }
    
}

int LFirst(List *plist, LData *pdata) {
    
    if (plist->numOfData == 0) {
        return FALSE;
    }
    
    plist->curPosition = 0;
    *pdata = plist->arr[0];

    return TRUE;
}

int LNext(List *plist, LData *pdata) {
    
    if (plist->curPosition >= (plist->numOfData) - 1) {
        return FALSE;
    }
    
    plist->curPosition += 1;
    *pdata = plist->arr[plist->curPosition];
    
    return TRUE;
}

int LCount(List *plist) {
    return plist->numOfData;
}
```
