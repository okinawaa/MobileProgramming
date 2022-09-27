### 플러터 클린 아키텍쳐 공부
Flutter 중급 - 클린 아키텍처

### Image Search App

### Note App


## 배운점

- 플러터에서의 확장가능한 폴더구조

![image](https://user-images.githubusercontent.com/69495129/192493555-8af09a56-7cb9-4b98-a373-17422744e582.png)

출처: 오준석님의 클린 아키텍쳐 PPT

- freezed 와 json serializable 을 활용해서 model 만드는 방법 
- mockito를 활용한 테스트
  - 단위 테스트란 실제 그 파일에 관여하는 로직만 테스트 하는것이다. 즉 다른 부분은 mock up 하는 형식으로 테스트가 이뤄진다.
- Stream을 활용한 데이터 다루기
  - stream이란 데이터가 흐른다는 뜻이며, 지속적으로 변하는 데이터를 나타낸다.
  - 이 부분을 관찰하며, 데이터의 변화가 일어난다면, UI를 다시 그려주는 작업을 한다.
- Provider 사용법
  - 상태관리 도구인 Provider 가 boilerplate 가 길고, 복잡하다는 이야기를 많이 들었지만, 사용해보니 하나도 안복잡하고 초반 configuration 도 엄청 간단했다. 물론 GetX가 더 간단하지만, 플러터의 본질을 꺠닫기 전까진 Provider를 사용하여 상태관리를 진행하고자 한다.
- Sqflite 사용법
  - 플러터에서 자주 사용되는 로컬 데이터베이스중에 Sqflite 에 대해서 공부했다. hive 와 같은 가벼운 도구들도 많이 있지만, SQL문을 직접 기술한다는 점에서 Sqflite가 좋았던것 같다. 실제 쿼리를 함수로 사용하는것이아닌 SQL을 기술한다는것은 더 자유롭고 무한한 쿼리가 가능하다고 생각하기 때문이다.

