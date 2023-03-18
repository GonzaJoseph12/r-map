import 'package:firebase_auth/firebase_auth.dart';
class SignUpData{
  final String username, email, password;
  SignUpData(
    {
    required this.username,
    required this.email,
    required this.password,}
  );
}

class SignUpResponse{
  final String? error;
  final User? user; 

  SignUpResponse(this.error, this.user);
}