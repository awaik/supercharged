extension IntRange on int {
  /// Creates an [Iterable<int>] that contains all values from current integer
  /// until (including) the value [n].
  ///
  /// Example:
  /// ```dart
  /// 0.rangeTo(5); // [0, 1, 2, 3, 4, 5]
  /// 3.rangeTo(1); // [3, 2, 1]
  /// ```
  Iterable<int> rangeTo(int n) {
    int count = (n - this).abs() + 1;
    int direction = (n - this).sign;
    int i = this - direction;
    return Iterable.generate(count, (int index) {
      return i += direction;
    });
  }

  /// Creates an [Iterable<int>] that contains all values from current integer
  /// until (excluding) the value [n].
  ///
  /// Example:
  /// ```dart
  /// 0.until(5); // [0, 1, 2, 3, 4]
  /// 3.until(1); // [3, 2]
  /// ```
  Iterable<int> until(int n) {
    if (this < n) {
      return this.rangeTo(n - 1);
    } else if (this > n) {
      return this.rangeTo(n + 1);
    } else {
      return Iterable.empty();
    }
  }


}