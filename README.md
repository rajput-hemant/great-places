<div align = center>

![View Counter][views] &nbsp; &nbsp; ![Repo Size][repo-size]

<img src='assets/images/marker.png' width='200'>

# Great Places

### A Flutter App to save your favorite places.

## ![][android] Download APK

---

**[<kbd> <br> **Universal Release** <br> </kbd>][universal-release]** &nbsp;&nbsp;
**[<kbd> <br> **arm64** <br> </kbd>][arm64]**&nbsp;&nbsp;
**[<kbd> <br> **x64** <br> </kbd>][x64]**&nbsp;&nbsp;
**[<kbd> <br> **armabi** <br> </kbd>][armabi]**&nbsp;&nbsp;
**[<kbd> <br> **Source Code (zip)** <br> </kbd>][sc-zip]**&nbsp;&nbsp;
**[<kbd> <br> **Source Code (tar.gz)** <br> </kbd>][sc-tar.gz]**

---

## 👨‍🎓 Things I learned through this project

</div>

- Working withh Native Device features like Camera, and Maps
- Using device location to enable map functionality
- Working with local databases like sqflite
- Working with system files

<div align = center>

## Dependencies Used

---

**[<kbd> <br> **http**: ^0.13.5 <br> </kbd>][http]**&nbsp;&nbsp;
**[<kbd> <br> **path**: ^1.8.1 <br> </kbd>][path]**&nbsp;&nbsp;
**[<kbd> <br> **sqflite**: ^2.0.3 <br> </kbd>][sqflite]**&nbsp;&nbsp;
**[<kbd> <br> **provider**: ^6.0.3 <br> </kbd>][provider]**<br><br>
**[<kbd> <br> **location**: ^4.4.0 <br> </kbd>][location]**&nbsp;&nbsp;
**[<kbd> <br> **latlong2**: ^0.8.1 <br> </kbd>][latlong2]**&nbsp;&nbsp;
**[<kbd> <br> **flutter_map**: ^2.2.0 <br> </kbd>][flutter_map]**&nbsp;&nbsp;
**[<kbd> <br> **image_picker**: ^0.8.5+3 <br> </kbd>][image_picker]**&nbsp;&nbsp;
**[<kbd> <br> **path_provider**: ^2.0.11 <br> </kbd>][path_provider]**

---

## 📱 App UI

<details><summary> Click here to expand </summary>

|    _Places List Screen_    |  _Place Detail Screen_   |
| :------------------------: | :----------------------: |
|  ![][places-list-screen]   | ![][place-detail-screen] |
| **_Add New Place Screen_** |     **_Map Screen_**     |
|   ![][add-place-screen]    |     ![][map-screen]      |

</details>

</div>

## Directory Structure

```
great_places
|
|-- assets
|   `-- images
|       `-- marker.png
|-- lib
|   |-- helpers
|   |   |-- db_helper.dart
|   |   `-- location_helper.dart
|   |
|   |-- models
|   |   `-- place.dart
|   |
|   |-- providers
|   |   `-- great_places.dart
|   |
|   |-- screens
|   |   |-- add_place_screen.dart
|   |   |-- map_screen.dart
|   |   |-- place_detail_screen.dart
|   |   `-- places_list_screen.dart
|   |
|   |-- widgets
|   |   |-- image_input.dart
|   |   `-- location_input.dart
|   |
|   `-- main.dart
|
|-- pubspec.yaml
|
`-- README.md
```

<div align = center>

## Building from Source

</div>

- If you don't have Flutter SDK installed, please visit official [Flutter](https://flutter.dev/) site.
- Fetch latest source code from master branch.

```console
rajput-hemant@arch:~$ git clone https://github.com/rajput-hemant/great-places
```

- Run the app with Android Studio or VS Code. Or the command line:

```console
rajput-hemant@arch:~$ flutter pub get
rajput-hemant@arch:~$ flutter run
```

<div align = center>

## Contributors:

[![][contributors]][contributors-graph]

</div>

<!----------------------------------{ Images }--------------------------------->

[places-list-screen]: https://telegra.ph/file/6a4c9986af2d75c1dbd9c.jpg
[add-place-screen]: https://telegra.ph/file/60bfa9671b49636d39ba2.jpg
[place-detail-screen]: https://telegra.ph/file/773e3da2dba584ef61891.jpg
[map-screen]: https://telegra.ph/file/af346cb3cc3d70e919d05.jpg
[contributors]: https://contrib.rocks/image?repo=rajput-hemant/great-places&max=500
[contributors-graph]: https://github.com/rajput-hemant/great-places/graphs/contributors
[android]: https://telegra.ph/file/f2f70a74d2d92c3c7f688.png

<!----------------------------------{ Labels }--------------------------------->

[views]: https://komarev.com/ghpvc/?username=great-places&label=view%20counter&color=red&style=flat
[repo-size]: https://img.shields.io/github/repo-size/rajput-hemant/great-places?color=blue

<!------------------------------------{ apk }----------------------------------->

[universal-release]: https://github.com/rajput-hemant/great-places/releases/download/v0.1.0/Great-Places-v0.1.0-universal-release.apk
[arm64]: https://github.com/rajput-hemant/great-places/releases/download/v0.1.0/Great-Places-v0.1.0-arm64.apk
[x64]: https://github.com/rajput-hemant/great-places/releases/download/v0.1.0/Great-Places-v0.1.0-x64.apk
[armabi]: https://github.com/rajput-hemant/great-places/releases/download/v0.1.0/Great-Places-v0.1.0-armeabi.apk

<!--------------------------------{ source code }------------------------------->

[sc-zip]: https://github.com/rajput-hemant/great-places/archive/refs/tags/v0.1.0.zip
[sc-tar.gz]: https://github.com/rajput-hemant/great-places/archive/refs/tags/v0.1.0.tar.gz

<!-----------------------------{ dependencies used }---------------------------->

[http]: https://pub.dev/packages/http
[path]: https://pub.dev/packages/path
[sqflite]: https://pub.dev/packages/sqflite
[provider]: https://pub.dev/packages/provider
[location]: https://pub.dev/packages/location
[latlong2]: https://pub.dev/packages/latlong2
[flutter_map]: https://pub.dev/packages/flutter_map
[image_picker]: https://pub.dev/packages/image_picker
[path_provider]: https://pub.dev/packages/path_provider
