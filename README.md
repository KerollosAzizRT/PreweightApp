# RT PreWeigh — handheld app

Android app for the operators' Honeywell handhelds (RT PreWeigh, Unilever raw-material pre-weigh traceability). It talks to the RT PreWeigh server; the server decides every weight and label.

## Important: do not edit this code by hand

This code is **generated from FlutterFlow** (project `24tt7JIxgWLjJCrQjhGG`, branch `feature-mobile-flutterflow`). Every new version is exported from FlutterFlow and pushed here, and **overwrites these files**. Changes made by hand in Android Studio are lost at the next export.

Need a change (a screen, a rule, custom code such as Bluetooth printing or the scale)? Ask for it, and it is made in FlutterFlow so it stays in every export.

Use this repository to **build, run and install** the app.

## Run it on a handheld (Android Studio)

1. Install Android Studio with the **Flutter** and **Dart** plugins, and the Flutter SDK (stable channel).
2. File → Open → this folder. Let Android Studio run `flutter pub get`.
3. On the Honeywell: Settings → About → tap *Build number* 7 times; then Developer options → turn on **USB debugging**. Connect it by USB and accept the prompt.
4. Pick the handheld in the device list and press **Run**.

Command line instead:

```bash
flutter pub get
flutter build apk --release
flutter install
```

## First use on a handheld

1. On the website, page **Handhelds**: register the handheld (for example `HH-01`), set its password and activate it.
2. Open the app → **Register this handheld** → enter the handheld ID and password → **Save handheld**. The password is kept in Android secure storage and is never shown again.
3. Sign in with your user name and password.

## Server address

The app calls the server at the address set in FlutterFlow (API group `RtApi`). During development this is an ngrok tunnel to the developer's machine, which must be running with the API on port 4000. For the factory installation the address is changed in FlutterFlow and a new version is exported.

## Versions

| Date       | What changed                                                                                                  |
| ---------- | ------------------------------------------------------------------------------------------------------------- |
| 2026-10-30 | Sign-in on the real server: handheld registration, secure device password, app ID `com.unilever.rtpreweigh` |
