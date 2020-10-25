part of 'game_bloc.dart';

@immutable
class GameState {
  final List<Position> moves;
  final Board board;
  final Duration gameDuration;
  final GameStatus status;
  final int maxMoves;
  final int maxSeconds;
  final bool refreshBannerAd;

  int get movesMade => moves.length;

  const GameState({
    @required this.moves,
    @required this.board,
    @required this.gameDuration,
    @required this.status,
    @required this.maxMoves,
    @required this.maxSeconds,
    @required this.refreshBannerAd,
  });

  factory GameState.initial() => GameState(
        moves: <Position>[],
        board: Board(),
        status: GameStatus.playing,
        gameDuration: Duration(seconds: 0),
        maxMoves: Config.maxMoves,
        maxSeconds: Config.maxTime,
        refreshBannerAd: true,
      );

  GameState copyWith({
    Board board,
    List<Position> moves,
    Duration gameDuration,
    GameStatus status,
    int maxMoves,
    int maxSeconds,
    bool refreshBannerAd,
  }) =>
      GameState(
        moves: moves ?? this.moves,
        board: board ?? this.board,
        gameDuration: gameDuration ?? this.gameDuration,
        status: status ?? this.status,
        maxMoves: maxMoves ?? this.maxMoves,
        maxSeconds: maxSeconds ?? this.maxSeconds,
        refreshBannerAd: refreshBannerAd ?? false,
      );
}
