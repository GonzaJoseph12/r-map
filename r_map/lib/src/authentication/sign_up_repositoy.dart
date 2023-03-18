import 'package:firebase_auth/firebase_auth.dart';
import 'package:r_map/src/authentication/sing_up.dart';
abstract class SingUpRepository{

 Future<SingUpRepository> register(SignUpData data);
}


