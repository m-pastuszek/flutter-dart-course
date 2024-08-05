class PositiveInt {
  final int value;

  const PositiveInt(this.value) : assert(value >= 0, 'Value cannot be negative');
}

void signIn (String email, String password) {
  assert(email.isNotEmpty, 'Email cannot be empty');
  assert(password.isNotEmpty, 'Password cannot be empty');
}
void main() {
  const list = [1,2,3];
  
  // const invalidAge = PositiveInt(-1);
}