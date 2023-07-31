# FlutterNews
### Flutter News App(MVVM Pattern)

## 프로젝트 요약
![Langauge:Dart](https://img.shields.io/badge/Language-Flutter-blue) ![platform:CrossPlatForm](https://img.shields.io/badge/Platform-CrossPlatfrom-blue)
> 2023.03.13 - 2023.03.20   
 
> **Flutter 개인 프로젝트**
* New API를 활용하여 MVVM 패턴을 적용한 뉴스 어플리케이션입니다.
* Model, ViewModel, Repository, View 형태의 구조로 이루어져 있습니다.
* Card Swiper 위젯을 사용하여 카드 넘김 형태의 UI로 만들었습니다.
<br>

## Logic
<img src = "MVVM NewsApp.drawio.png" alt="News App" width="1280px" height="500px">


## Dependency
- `card_swiper`:  <a target="_blank" href="https://pub.dev/packages/card_swiper">https://pub.dev/packages/card_swiper</a>
- `http`: <a target="_blank" href="https://pub.dev/packages/http">https://pub.dev/packages/http</a>
- `url_launcher`: <a target="_blank" href="https://pub.dev/packages/url_launcher">https://pub.dev/packages/url_launcher</a>

## API
https://newsapi.org/

## 사용할 때('lib/repository/news_api')
```dart
var keyApi = "YOUR API_KEY";
```

## 시연영상
https://youtu.be/ApacwSE5Hso)https://youtu.be/ApacwSE5Hso


