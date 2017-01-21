# MoJ

A simple helper to display [:emojis:](http://www.webpagefx.com/tools/emoji-cheat-sheet/) in dart managed text. 

[More about emojis](https://en.wikipedia.org/wiki/Emoji)

## Usage

```dart
import 'package:moj/moj.dart';

main() {
  print(MoJ.tag(':heart:')); // prints ❤️
  print(MoJ.parse('I :heart: my :computer:')); // prints I ❤️ my 💻.
}
```


