##What's new iOS10 SDK
Sungwon park이 이번 iOS10에서 어떤 sdk를 개발자들에게 공개하였는지 정리했습니다.

##iMessage + Apps
### Sticker pack extension.
사용자들이 만든 스티커를 아이메세지에서도 사용이 가능해졌습니다. 스티커는 앱스토어에서 다운받을 수 있으며, 개발자가 만들어 배포할 수 있습니다.

### iMessage extension.
메세지 익스텐션을 통해서, 아이메세지 버블들 보내는 효과들을 만들어 낼 수 있습니다. 여러가지 다양한 커스텀이 가능해졌습니다.

##Siri + Apps / Maps + Apps
* 시리와 사용자가 만든 앱을 통해서, 시리에게 특정 명령을 하면, 사용자가 만든 앱의 정보를 시리를 통해 간편하게 보여 줄 수 있게 되었습니다. 
* 시리와 마찬가지로 사용자가 만든 커스텀 컨텐츠들을 보여줄 수 있게 되었습니다.
* IntentsUI를 통해서 시리와 맵 인터페이스 안에서 사용자 커스텀 컨텐츠들을 주입시킬 수 있게 되었습니다.
* IntentsUI Framework는 UIIntents UI익스텐션을 만들수 있도록 도와주는데요 이것이 무엇이냐면 시리 또는 맵스 인터페이스 안에서 커스텀 내용들을 보여줄수있는 선택적인 앱 익스텐션 입니다. 

##Phone + Apps.
이제 VOIP앱들은 CallKit Framework를 통해서 Phone UI와 통합하여 사용자들에게 더욱더 멋진 경험을 줄 수 있게 되었습니다. 잠금 화면에서도 전화가 오는것처럼 동일하게 표현되며, 연락처 관리등을 할 수 있습니다.

##iOS10 Issues
권한 요청시 죽음 (Info.plist에 아래 링크에서 언급하는 알맞는 권한을 설정해줘야함) 예로 카메라, 마이크 접근
http://stackoverflow.com/questions/38236723/ios-10-error-access-private-when-using-uiimagepickercontroller
