abstract class Config {
  /// Initial max moves in a game, can be made bigger with watching videos.
  static const int maxMoves = 100;

  /// Maximum number of seconds a player can spend in a game. Can be made
  /// bigger by watching videos.
  static const int maxTime = 120;

  static const int videoExtendsMoves = Config.maxMoves;

  static const int videoExtendsTime = Config.maxTime;
}
