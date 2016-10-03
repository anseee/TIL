## What's new Swift3

###주요 변화
* swift 2.2에서 deprecated된 부분들이 모두 제거되었다.
* 언어 현대화 이슈들

###상세 변화

#### ++와 - 동작들
* 복잡성으로 인해 ++와 --의 사용을 제거하고 (+=)과 (-=)을 사용하면 된다.
* 물론 i = i + 1, i = i - 1 등의 식은 그대로 사용 가능하다.

#### c 스타일의 루프
기존 c스타일의 for 루프들을 모두 제거했다. 이제 더이상 swift3에서는 아래와 같은 코드를 사용하지 못한다.
<pre><code>
for (int i = 1; i <= 10; i++) {
  print(i);
}
</code></pre>
이를 대신해서 아래와 같은 코드로 위 코드를 대신할 수 있다.
<pre><code>
for i in 1...10 {
  print(i)
}
</code></pre>
또는 아래와 처럼 가능하다.
<pre><code>
(1...10).forEach {
  print($0)
}
</code></pre>

#### 함수 파라미터에서 var 타입 제거
기존 swift2.0에서는 함수 파라미터(var 키워드가 붙은)를 로컬 지역에서 복사하여 수정이 가능하였다. 이제 swift3 에서는 개발자에게 수정하는것을 막았다. 따라서 함수 안에서 var 변수를 선언하고 수정을 원하는 파라미터 값을 넣어 해당 변수를 사용하여야 한다. 아래는 swift 2.0대 버전 메소드다.
<pre><code>
func gcd(var a: Int, var b: Int) -> Int {

  if (a == b) {

    return a

  }

  repeat {

    if (a > b) {

      a = a - b

    } else {

      b = b - a

    }

  } while (a != b)

  return a

}
</code></pre>
아래는 최신 swift3버전 메소드
<pre><code>
func gcd(a: Int, b: Int) -> Int {

  if (a == b) {

    return a

  }

  var c = a

  var d = b

  repeat {

    if (c > d) {

      c = c - d

    } else {

      d = d - c

    }

  } while (c != d)

  return c

}
</code></pre>
#### 일관된 함수 파라미터 레이블 (External Parameter Name, Internal Parameter Name)
swift2에서는 함수 호출시, 파라미터 레이블을 굳이 다 넣지 않아도 되었다. 하지만 swift3에서는 그것을 허용하지 않는다. 함수 호출시 무조건 해당 파라미터의 레이블을 붙여 호출하여야 한다. swift2에서는 아래와 같이 가능했다. (레이블a가 빠져있음)
<pre><code>
gcd(8, b: 12)
</code></pre>
하지만 swift3에서는 아래와 같이 하여아 한다. (레이블 a를 무조건 넣어줘야함)
<pre><code>
gcd(a: 8, b: 12)
</code></pre>

#### 속성과 파라미터 이름은 항상 소문자로 시작합니다.
이 규칙은 예전부터 적용되어 왔지만, CG, CI와 같은 약자들은 예외적으로 대문자로 작성했습니다. Swift 3.0에서는 이런 예외가 더이상 허용되지 않습니다. 예를 들어 UIColor의 CGColor 속성은 다음과 같이 변경되었습니다.
<pre><code>
let color = UIColor.red().cgColor
</code></pre>
열거형의 멤버 이름 역시 소문자로 시작합니다. NSTextAlignment 열거형의 Center 멤버는 Swift 3.0에서 center로 변경되었습니다.
<pre><code>
NSTextAlignment.center
</code></pre>

####셀렉터와 키패스를 표현하는 새로운 문법을 제공합니다.
셀렉터는 #selector를 통해 표현할 수 있습니다. 또한 getter와 setter를 구분할 수 있습니다.
<pre><code>
#selector(UIColor.red)
#selector(getter: UIView.frame)
#selector(setter: UIView.frame)
</code></pre>
기존에는 키패스를 표현할 때 문자열을 사용했지만 Swift 3.0에서는 #keyPath를 사용합니다.
<pre><code>
obj.valueForKeyPath(#keyPath(A.b.c.d))
</code></pre>

