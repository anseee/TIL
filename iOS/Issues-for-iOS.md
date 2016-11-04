# Issues
Sungwon Park이 아이폰 프로젝트를 하면서 이슈 사항들과 해결을 어떻게 했는가에 대해 이력들을 남깁니다.

## 날짜별 이슈 내역

####2016. 07. 26
앱스토어에 업로드를 하고자 했지만 "ERROR ITMS-90328: "Your Package contains a file 'my app.app/Icon' with a name that contains invalid characters Avoid using control characters in the file names."라 뜨면서 업로드가 되지 않았다. 스택오버플로우에서 겨우 검색하여 찾은 해결방안이 아래에 있다. 아래 글을 읽고서 프로젝트 내에 'Icon.' 으로시작하는 파일을 검색하니, 정말로 'Icon.'으로 시작하는 파일이 하나 있었고, 이녀석을 지우고 다시 재업로드 시도를 하니 성공!! App icon file must be named Icon.png. It appears that your binary includes a file with incorrect name or a space in between. Check the app icon file's name. Also check your XCode project for any stray file with name Icon .png. Sometimes due to version control softwares there can be some hidden files backup with strange name. Check for hidden files/folders with name Icon . in your XCode project. Any such files getting included in your XCode project will get added in the app binary resources.

#### 2016. 08. 10
디렉토리 구조를 변경하는 상황에서, “no such file or directory error” 에러가 발생했다. 제거된 리소스를 계속해서 참조하고 있어 발생하였다. 아래는 해결 방법을 나열했다. (참고 : StackOver Flow)
   * Open your project in Xcode
   * Click on your project
   * Click on your project under Targets
   * Hit the build phases tab
   * Open “Copy Bundle Resources” near the bottom
   * Look for any resources listed in red!
   

#### 2016. 08. 12
테이블 뷰에서 셀 높이값이 0이면 테이블 섹션 자체를 부르지 않는 것을 확인했다. 분명 배열안에는 데이터가 있는데, 왜 테이블뷰에서 섹션을 잡아내지 못하는가에 대해 고민하다가 다행히 찾아내서 오늘도 살았다.
    
#### 인증서 이슈
APNS 전송이 안되서 확인해보니 배포용 인증서 설정시, 서버는 배포용 APNS 인증서를, 클라이언트는 일반 배포용 인증서를 이용해서 설정하니 정상적으로 받았다. 매번 인증서 설정할때마다 새롭다.

#### 2016. 08. 24
status bar 터치시 맨 위로 가야되는데 이동되지 않는 이슈가 있었다. 검색을 해보니 scroll view를 상속받는 인스턴스들이 둘 이상이면 동작하지 않은것을 확인했고, status bar를 터치했을때, 맨 위로 이동하고자 하는 인스턴스에 scrollsToTop = YES로 설정 나머지는 NO로 설정하니 동작한다.
  
#### 2016. 09. 17
이번에 xcode8로 업데이트 하면서 "Module file was created by an older version of the compiler" 에러가 나왔다. 현상을 찾아보니 xcode7에서 사용하다가 이번에 업데이트 하면서 충돌이 난듯하다. 기존 DerivedData를 제거("Remove all the derive data rm -rf ~/Library/Developer/Xcode/DerivedData/")하고 "carthage update --no-use-binaries."명령어 실행후 실행하니 매우 잘됬다
   
#### 2016. 09. 22
비디오 첨부시, 비디오 섬네일 이미지가 이상하게 돌아가있는 현상이 나타났다. 아래 해당 코드를 입력하니 해결
   <pre><code>generator.appliesPreferredTrackTransform=true</code></pre>
   
#### 2016. 11. 05

REST API를 순차적으로 요청해야하는 로직을 짜야할 필요가 있었다. 비동기로 batch를 돌려 순차적으로 요청하도록 만들었지만, 요청 하고 난 후 처리 로직이 비동기로 동작해서 내가 원하는 데이터를 뽑아내지 못했다. 이부분을 뭐 이것저것 해봤지만, 깔끔하게 짜질 못해 생각했다. 그 와중에 생각한 것이 재귀를 이용한 것이었다. 이번에 자료구조를 다시 공부하고 있는데, 재귀가 생각나서 적용해보니 순차적으로 내가 원하는 로직을 짜는건 물론이고, 더욱더 깔끔하게 군더더기 없이 코드를 작성했다.

오늘 이모티콘 부분을 마무리하는 단계였는데, 램 데이터 쪽을 마이그레이션해야 하는 부분이 생겼다. 그런데 계속해서 마이그레이션이 안되서 보니, 알고보니 내가 암호화 해둔 데이터에 접근하지 하고 엄한곳에서 마이그레이션을 시도했다. 3시간동은 왜 안되는지 쥐어짜다가 내가 잘못된 부분을 지적해준 덕분에 해결되었다.

이모티콘 즐겨찾기 부분은 이전에 만들어둔 코어데이터를 이용해서 기능이 만들어져 있는 상태였다. 그런데 즐겨찾기를 하고 나서 앱을 종료하고 보니, 즐겨찾기가 저장이 되지 않았다. 왜그런가 보니 코어데이터에서 NSManagedContext 에서 save라는 메서드가 있었고 이 메서드를 호출하지 않아서 저장하지 못했다. 

이번 이모티콘 기능을 만들면서 Realm에 대한 이해도와, 로직에 관한 몇몇 부분들, 코어 데이터의 특징들을 공부했다. 오늘도 많은것을 배우고 간다. 난 아직 멀었다 더욱더 공부하도록 하자.   
