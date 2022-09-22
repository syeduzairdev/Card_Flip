[![publish](https://github.com/ZuYun/card_flip/actions/workflows/publish.yml/badge.svg)](https://github.com/ZuYun/card_flip/actions/workflows/publish.yml)  [![lib web](https://github.com/ZuYun/card_flip/actions/workflows/libweb.yml/badge.svg)](https://github.com/ZuYun/card_flip/actions/workflows/libweb.yml)

# what is it

[![online](https://img.shields.io/badge/online-test-green)](https://zuyun.github.io/card_flip/#/)

![flipover](https://raw.githubusercontent.com/ZuYun/card_flip/main/preview/flip_cards.gif)

https://user-images.githubusercontent.com/9412501/147241403-9096fa5c-db76-4106-828b-f9f0b454747b.mp4        https://user-images.githubusercontent.com/9412501/147240240-c81bece3-52f7-4ef9-a08b-69ca6b748e4d.mp4

# how to use
[![pub](https://img.shields.io/badge/pub-v0.0.4-green)](https://pub.dev/packages/card_flip)
```dart
FlipLayout(
    duration: 800,
    foldState: true,
    foldChild: FoldCard(),
    children: List.generate(5, (index) {
          return itemWidget(index);
      }),
)
```
## customization

```dart
const FlipLayout({
    Key? key,
    this.children,
    this.foldChild,
    this.foldState = false,
    this.decoration,
    this.duration = 1000,
    this.borderRadius,
    this.backgroundColor = Colors.grey,
    this.background,
})
```
