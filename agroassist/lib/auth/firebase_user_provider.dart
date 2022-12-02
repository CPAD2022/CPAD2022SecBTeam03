import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AgroassistFirebaseUser {
  AgroassistFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AgroassistFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AgroassistFirebaseUser> agroassistFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AgroassistFirebaseUser>(
      (user) {
        currentUser = AgroassistFirebaseUser(user);
        return currentUser!;
      },
    );
