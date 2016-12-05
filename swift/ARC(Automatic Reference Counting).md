#ARC(Automatic Reference Counting)
아래 예제 클래스가 있다. 이 클래스를 이용해서 강한 참조에 대한 개념을 익혀보자 (참고 :  애플 개발자 홈페이지 스위프트 3.0.1)

```Swfit
class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
```

사람 클래스르 만들고 이름을 삽입할 수 있는 멤버 변수 하나를 선언 했다. 그리고 초기화와, 인스턴스 해제 메서드가 보인다. 그리고 아래에는 사람 클래스를 참조하는 3개의 변수가 있다.

```Swfit
var reference1: Person?
var reference2: Person?
var reference3: Person?
```

그리고 하나의 레퍼런스에 사람 이름을 넣고 초기화를 했다. 그래서 주석에 나와있는 메시지가 출력된다. 그리고 이제 reference1은 강한 참조를 하고 있고 ARC에서는 적어도 1개의 강한 참조가 있기 때문에 메모리에서 해제 하지 않습니다.

```Swfit
reference1 = Person(name: "John Appleseed")
// Prints "John Appleseed is being initialized"
```

이제 아래처럼 reference1을 각각 2,3에 삽입을 하게 되면 두 인스턴스 모두 강한 참조가 된다.
```Swfit
reference2 = reference1
reference3 = reference1
```

자 이제 강한 참조를 하고 있는 인스턴스는 3개 이다 (1,2,3), 아래처럼 nil값을 넣었지만, 1개의 강한 참조 인스턴스(3번)이 남아있기 때문에 메모리에서 해제 되지 않는다.

```Swfit
reference1 = nil
reference2 = nil
```

마지막 3번을 nil을 설정하여 강함 참조를 파괴하니 그제서야 매모리에서 해제가 되는 것을 주석 출력을 통해 되는것을 알 수 있다. 따라서 강한 참조는 한번 매모리에 올라가면 하나도 남김없이 파괴가 되어야만 매모리에서 해제가 된다.

```Swfit
reference3 = nil
// Prints "John Appleseed is being deinitialized"
```




