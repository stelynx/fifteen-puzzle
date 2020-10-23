class Position {
  final int x;
  final int y;

  const Position(this.x, this.y);

  bool isNeighbourOf(Position p) {
    return ((p.x - x).abs() == 1 && (p.y - y).abs() == 0) ||
        ((p.x - x).abs() == 0 && (p.y - y).abs() == 1);
  }

  Position operator +(Position p) {
    return Position(p.x + x, p.y + y);
  }

  @override
  bool operator ==(Object o) {
    if (!(o is Position)) return false;
    final Position other = o;
    return x == other.x && y == other.y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() {
    return 'Position($x,$y)';
  }
}
