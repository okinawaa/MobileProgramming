# 인스타그램 클론코딩

[개발하는남자](https://www.youtube.com/playlist?list=PLgRxBCVPaZ_1iBe1v3-ZSSzHGdQo7AZPq) 님의 인스타그램 클론코딩을 수강하였습니다.




### 데모영상

![ezgif com-gif-maker-2](https://user-images.githubusercontent.com/69495129/183050665-3a4f4bf3-bbfd-4793-b136-b7cae64eeabc.gif)

### folder structure

```
.
├── bindings 컨트롤러 바인딩을 관리
├── components 재사용가능한 위젯 생성
├── controller 뷰 이외의 비즈니스 로직
├── models 데이터 스펙 클래스 정의
├── pages 페이지 뷰 UI 작업
├── repository 서버와 송수신 및 데이터 처리
├── utils 유용한 클래스 
├── app.dart 권한이 있는 유저의 시작점
└── root.dart 권한에 따른 분기

```

### 배운점

- GetX 로 상태관리 
- GetX 로 라우팅 처리
- Flutter 와 firebase를 연동
- firestore 사용
- firebase authentication google api 
- flutter tab menu 사용
- future builder & stream builder
- flutter publishing skill
- flutter folder structure
- bottomnavigation + history
- nested router
- 권한에 따라 라우팅 분리하는 방법

### 느낀점

플러터로 진행한 가장큰 프로젝트였던것 만큼 너무 값졌다.

플러터가 AOS,IOS 둘다 구현가능한 기술이므로 사람들이 배우고자 하는 이유가 되는데, 실제로는 둘다 계속 테스트 해보면서 진행해봐야했던 것 같다.
예를들어 AOS에서는 잘 돌아가던 코드가, IOS에서는 권한문제때문에 오류가 나는 경우도 있다. 그러므로 한 플랫폼에서 끝! 하고 다른쪽을 보는게 아니라, 지속적으로 두 플랫폼을 확인하면서 개발해야겠다는 생각을 했다.

리액트에서는 어느정도 재사용가능한 컴포넌트를 설계하고 분리할 수 있는데, 플러터에서 어떻게 적용해야할지 막막했다. 하지만 강사님께서 하시는 방향을 보면서 왜 저렇게 분리하시지? 라는 생각을 갖고 진행을 하자 점점 플러터에서도 어떻게 위젯 분리를 해야 깊은 depth 가 쌓이지 않을까 계속 고민을 하면서 성장을 했다.

항상 폴더구조에 집착하는 성격을 갖고 있다. 그래서 플러터를 배우기전에 플러터 최적의 폴더구조를 서칭을 많이 해봤는데, 그럴싸한 boiler-plate가 없었다. 이 클론코딩을 마치자 어느정도 폴더구조를 어떻게 가져가야 확장가능한 프로젝트를 설계할 수 있을지 고민하는 시간을 가졌다. 추후에는 의존성 주입등을 어떻게 관리할지 배워보고 싶다.

처음엔 웹보다 어려워보였던 앱개발이 점점 쉽게 다가와지는것 같다. 반응형도 크게 고려할 필요없으니 오히려 퍼블리싱 + 데이터 패칭에만 몰두할 수 있어서 더 편리한 것 같다

### Trouble shooting

- ios 에서 firebase 연동
  - RUNNER folder 에 google-services.json 이 제대로 삽입되있는지 확인한다.
  - xcode 에서 google-services.json 파일을 직접 주입해주자.

- ios 에서 google sign-in 에러
  - info.plish 에 나의 key를 복사해줘야한다.

- ios 에서 카메라 앨범 권한 이슈
  - info.plist 에 하기의 코드를 추가해준다
  
  ```
  <key>NSPhotoLibraryUsageDescription</key>
	<string>Allow access to photo library</string>
  ```

- photo_manager upgrade 로 인한 스펙 변경
  - asset.thumbnailDataWithSize(ThumbnailSize(size, size) 와 같이 인자에 클래스를 넣어줘야한다. (기존에는 size를 넣어줬어야함)
  
- android Multidex issue
  - https://stackoverflow.com/questions/49886597/multidex-issue-with-flutter
