#iOS와 앱 생명주기
앱은 iOS 시스템 프레임워크와 우리가 작성하는 커스텀 코드 사이의 잘 짜여진 상호작용의 결과물이다. 앱을 제작하는 과정에서 iOS 시스템 프레임워크가 앱이 실행되는 데 필요한 기본 구조를 제공하면 우리는 만들고자 하는 화면을 구성하고, 기본 구조를 커스터마이징하기 위한 코드를 작성한다. 이러한 작업을 효율적으로 하려면 앱을 이루는 기본 구조를 이해하고 앱이 어떻게 동작하는지를 파악할 필요가 있다. 

또한 , iOS 프레임워크는 모델 뷰 컨트롤러로 구성되는 MVCㅐ턴과 델리게이트 패턴 등 디자인 패턴에 의존적인 아키텍처다. 디자인 패턴을 얼마나 잘 이해하느냐에 따라 얼마나 성공적인 앱을 만들 수 있는지가 달라진다.

##13.1 앱의 생명주기
C언어를 기반으로 만든 모든 프로그램은 main()함수로부터 시작된다. 이를 엔트리 포인트(시작 진입점)이라고 한다 오브젝티브 c는 c언어를 바탕으로 하므로 엔트리 포인트 역시 main()함수이다. 이를 이용해서 만드는 iOS앱과 main()함수로 부터 시작된다. 다만 iOS 앱은 일반 프로그램과는 달리 엔트리 포인트로서의 main()함수를 직접 작성할 필요가 없다.

main()함수는 내부적으로 메인 애플리케이션을 실행해주는 UIApplicationMain()을 호출하는데, 이때 인자값으로 AppDelegate 클래스르 입력받는다. 델리게이트 역할을 할 클래스다 그러면 스위프트에서는 UIApplicationMain()을 호출할까?

스위프트 기반 프로젝트에서는 오브젝티브c로 구성한 프로젝트처럼 main.m파일이 없다. 또한 엔트리 포인트도 없다 따라서 직접 UIApplicationMain()을 호출하여 델리게이트 역할을 할 AppDelegate 클래스를 넘겨주는 방식으로 앱을 구동시킬 수 없다. 대신 스위프트에서는 다음과 같은 어노테이션 방식을 사용한다.

델리게이트 역할을 할 클래스에 @UIApplicationMain 어노테이션을 걸어주는 방식으로 시스템에 델리게이트 클래스 정보를 전달한다. iOS 시스템은 앱을 실행할 때 이 어노테이션이 표시된 클래스를 찾아 델리게이트로 지정한다.

최초에 main()함수가 실행되고, 함수 내부에서 UIApplicationMain()을 호출하면 앱이 구동된다. 물론 스위프트에서는 main()함수를 통해 UIApplicationMain()을 호출하는 대신 @UIApplicationMain 어노테이션을 찾아 해당하는 클래스를 실행한다. 그다음 사용자 입력을 기다리는 이벤트 루프가 시작되고, 시스템 요청에 따라 앱이 구동을 멈추고 메모리에서 해제되는 것으로 앱의 생명주기가 모두 완료된다.

스위프트 기반 앱에서 @UIApplication 어노테이션을 시스템이 읽어들이는 시점에 맞추어 델리게이트 클래스에 작성된 application(_:didFinishLaunching:) 메소드가 시스템에 의해 자동으로 호출된다. 즉 우리가 기본 프로젝트를 생성하면 만들어지는 AppDelegate클래스의 application(_:didFinishLaunching:)메소드 내부에 원하는 커스텀 코드를 작성해두면 앱이 처음 시작될 때 시스템에 의해 자동으로 실행된다는 의미이다.

이어서 시스템 프레임워크의 이벤트 루프는 우리가 작성하는 이벤트 핸들에 의해 커스텀 코드로 연결된다. 시스템에서 발생할 수 있는 여러 이벤트 중에서 우리가 원하는 이벤트를 제어하도록 핸들을 만들어 커스텀 코드와 연결해 놓으면 이벤트 루프에서는 특정 이벤트가 발생했을 때 우리가 만든 핸들을 통하여 커스텀 코드를 실행할 수 있도록 처리한다. 핸들을 만드는 것은 앞에서 @IBAction 메소드를 만드는 과정을 떠올리면 이해하기 쉽다.

이제 앱이 실행 목적을 달성하여 시스템이 앱을 메모리에서 제거하도록 요청하면 앱 시스템은 델리게이트 클래스의 application(_:WillTerminate:)메소드를 호출해줍니다. 앱이 종료될 때 처리해야할 내용이 있다면 이 메소를 호추한다. 애비 종료될 때 처리해야할 내용이 있다면 이 메소드 내부에 커스텀 코드로 작성해두면 마찬가지로 시스템에 의해 알아서 실행된다.