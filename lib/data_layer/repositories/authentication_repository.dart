import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final _controller = StreamController<AuthenticationStatus>();
  late GoogleSignInAccount? user;

  Stream<AuthenticationStatus> get status async* {
    yield* _controller.stream;
  }

  Future<void> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return;
    user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);
    _controller.add(AuthenticationStatus.authenticated);
  }

  Future<void> logOut() async {
    await _googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
