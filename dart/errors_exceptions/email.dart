class EmailAddress {
  final String email;

  EmailAddress(this.email) {
    assert(email.isNotEmpty);
    assert(email.contains('@'));

    if (email.isEmpty)
      throw FormatException('Email cannot be empty');
    if (!email.contains('@'))
      throw FormatException('Email must contain an @ sign');
  }

  @override
  String toString() => email;
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}