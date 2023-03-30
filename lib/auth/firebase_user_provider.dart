import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NatureNetworkFirebaseUser {
  NatureNetworkFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NatureNetworkFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NatureNetworkFirebaseUser> natureNetworkFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NatureNetworkFirebaseUser>(
      (user) {
        currentUser = NatureNetworkFirebaseUser(user);
        return currentUser!;
      },
    );
