class DatabaseError {
  final String? errorMessage;

  DatabaseError({this.errorMessage});

  @override
  String toString() {
    return 'Error: $errorMessage';
  }
}
