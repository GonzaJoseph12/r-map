

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:r_map/src/authentication/sing_up.dart';
// import 'package:r_map/src/authentication/sign_up_repositoy.dart';



// class SignUpRepositoryImpl implements SingUpRepository{
//   final FirebaseAuth _auth;
//   SignUpRepositoryImpl(this._auth);

//   @override
//   Future<SignUpResponse> register(SignUpData data) async{
//     try{
//       final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//         email: data.email, 
//         password: data.password,
//         );
//       await userCredential.user!.updateDisplayName(
//         "${data.username}"
//         );
//       return SignUpResponse(null, userCredential.user!);
//     } on FirebaseAuthException catch(e){
//       return SignUpResponse(e.code, null);
//     }
//   }
// }