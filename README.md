# flutter_fcm_notifications
- [Youtube tutorial]()
- [Firebase docs](https://firebase.google.com/docs/flutter/setup?platform=android)

- Install the FCM plugin:
```
flutter pub add firebase_messaging
```
- Install Firebase CLI (here)[https://firebase.google.com/docs/cli]
- Add app to firebase (here)[https://firebase.google.com/docs/flutter/setup?platform=ios]
- Install  firebase_options(once):
```
dart pub global activate flutterfire_cli
```
- run :
```
flutterfire configure
```
- install the firebase core plugin:
```
 flutter pub add firebase_core
```
ensure that your Flutter app's Firebase configuration is up-to-date:
```
flutterfire configure
```
- response is: 
```
Platform  Firebase App Id
web       1:782333401605:web:3dde1b73e607cd20ae1a6c
android   1:782333401605:android:1c33fc26db288de1ae1a6c
ios       1:782333401605:ios:2731480cedf09a5cae1a6c
```
- To obtain the FCM for the first time: 
1.1 delete pubspec.lock
1.2 Run following commands: (atleast 3 times)
```
flutter clean
flutter pub get
flutter run
```

## SHA-1 Generation for android (Thats if flutterfire configure failed)
1. Right click on 'gradlew' and go to 'Open in Terminal' This file is found under {{YOUR PROJECT}}/android/gradlew
   1.1 Or Change directory to "android" i.e. cd android
2. Type in the following command.
```
gradlew signingReport
```
- or If did not work first try second command(on windows):
```
./gradlew signingReport
```
- Add android app SHA-1 to firebase console

## Reducing flutter app size:
- Run following commands:
```
flutter clean
flutter build apk --target-platform android-arm,android-arm64
```
