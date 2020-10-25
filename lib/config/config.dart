abstract class Config {
  /// Initial max moves in a game, can be made bigger with watching videos.
  static const int maxMoves = 150;

  /// Maximum number of seconds a player can spend in a game. Can be made
  /// bigger by watching videos.
  static const int maxTime = 120;

  /// When rewarded video is watched, give this many additional moves.
  static const int videoExtendsMoves = Config.maxMoves;

  /// When rewarded video is watched, give this many additional seconds.
  static const int videoExtendsTime = Config.maxTime;

  /// When [refreshBannerAdPeriod] passes, the banner on game screen is refreshed.
  static const int refreshBannerAdPeriod = 15;
}
