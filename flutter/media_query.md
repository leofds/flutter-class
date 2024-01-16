[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# MediaQuery

```dart
MediaQueryData deviceInfo = MediaQuery.of(context);

print('Tamanho    : ${deviceInfo.size}');
print('Orientação : ${deviceInfo.orientation}');
print('Hora(24 h) : ${deviceInfo.alwaysUse24HourFormat}');
print('Brilho     : ${deviceInfo.platformBrightness}');
print('Padding    : ${deviceInfo.padding}');
print('Device Pixel Ratio : ${deviceInfo.devicePixelRatio}');
```
