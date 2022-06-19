/// {@template router.error}
/// Router error
/// {@endtemplate}

class UnrecognizedResource implements Exception {
  /// {@template router.error}
  UnrecognizedResource([this.object]);

  /// object like string or int
  final Object? object;

  @override
  String toString() =>
      'Unrecognized Resource: $object of type ${object.runtimeType}';
}
