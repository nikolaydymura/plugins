# video_player_example

Demonstrates how to use the video_player plugin.

```yaml
dependency_overrides:
  video_player:
    git:
      url: git@github.com:nikolaydymura/plugins.git
      ref: main
      path: packages/video_player/video_player
  video_player_platform_interface:
    git:
      url: git@github.com:nikolaydymura/plugins.git
      ref: main
      path: packages/video_player/video_player_platform_interface
  video_player_avfoundation:
    git:
      url: git@github.com:nikolaydymura/plugins.git
      ref: main
      path: packages/video_player/video_player_avfoundation
```

```dart
_controller
        .initialize()
        .then((_) => _controller.prepareFilters([
              <String, String>{'name': 'CIPhotoEffectNoir'},
              <String, String>{
                'name': 'CIColorCube',
                'inputCubeData': 'assets/Siamskaya-Kisa.png',
                'inputCubeDimension': '64'
              }
            ]))
```


```dart
_controller.useFilter(-1); // no filter

_controller.useFilter(0); // index from list of prepared filters
```