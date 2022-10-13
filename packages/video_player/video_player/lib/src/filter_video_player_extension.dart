part of '../video_player.dart';

extension FilteredVideoPlayerController on VideoPlayerController {

  Future<void> prepareFilters(List<Map<String, String>> filters, {bool append = false}) async {
    if (_isDisposedOrNotInitialized) {
      return;
    }
    await _videoPlayerPlatform.prepareFilters(_textureId, filters, append);
  }

  /// Sets whether or not the video should use fitler
  Future<void> useFilter(int filterId) async {
    if (_isDisposedOrNotInitialized) {
      return;
    }
    await _videoPlayerPlatform.useFilter(_textureId, filterId);
  }
}