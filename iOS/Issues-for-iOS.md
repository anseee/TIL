# Issues
Sungwon Park이 아이폰 프로젝트를 하면서 이슈 사항들과 해결을 어떻게 했는가에 대해 이력들을 남깁니다.

## 이슈 내역

* 앱스토어에 업로드를 하고자 했지만 "ERROR ITMS-90328: "Your Package contains a file 'my app.app/Icon' with a name that contains invalid characters Avoid using control characters in the file names."라 뜨면서 업로드가 되지 않았다. 스택오버플로우에서 겨우 검색하여 찾은 해결방안이 아래에 있다. 아래 글을 읽고서 프로젝트 내에 'Icon.' 으로시작하는 파일을 검색하니, 정말로 'Icon.'으로 시작하는 파일이 하나 있었고, 이녀석을 지우고 다시 재업로드 시도를 하니 성공!!

  * App icon file must be named Icon.png. It appears that your binary includes a file with incorrect name or a space in between. Check the app icon file's name. Also check your XCode project for any stray file with name Icon .png. Sometimes due to version control softwares there can be some hidden files backup with strange name. Check for hidden files/folders with name Icon . in your XCode project. Any such files getting included in your XCode project will get added in the app binary resources.

## 인증서 이슈

* APNS 전송이 안되서 확인해보니 배포용 인증서 설정시, 서버는 배포용 APNS 인증서를, 클라이언트는 일반 배포용 인증서를 이용해서 설정하니 정상적으로 받았다. 매번 인증서 설정할때마다 새롭다.
