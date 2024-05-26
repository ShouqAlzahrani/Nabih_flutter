import 'package:flutter_test/flutter_test.dart';
<<<<<<< HEAD
import 'package:nabih/firebase_options.dart';
=======
import 'package:nabih/firebase_options.dart'; 
>>>>>>> refs/remotes/Nabih/main

void main() {
  group('DefaultFirebaseOptions', () {
    test('Returns correct FirebaseOptions for Android', () {
      // Simulate Android platform
<<<<<<< HEAD
      expect(DefaultFirebaseOptions.currentPlatform,
          DefaultFirebaseOptions.android);
=======
      expect(DefaultFirebaseOptions.currentPlatform, DefaultFirebaseOptions.android);
>>>>>>> refs/remotes/Nabih/main
    });

    test('Returns correct FirebaseOptions for iOS', () {
      // Simulate iOS platform
<<<<<<< HEAD
      expect(
          DefaultFirebaseOptions.currentPlatform, DefaultFirebaseOptions.ios);
=======
      expect(DefaultFirebaseOptions.currentPlatform, DefaultFirebaseOptions.ios);
>>>>>>> refs/remotes/Nabih/main
    });

    test('Throws UnsupportedError for Web', () {
      // Simulate Web platform
      try {
        DefaultFirebaseOptions.currentPlatform;
        fail('Expected UnsupportedError');
      } catch (error) {
        expect(error, isUnsupportedError);
<<<<<<< HEAD
        expect(
            error.toString(),
            contains(
                'DefaultFirebaseOptions have not been configured for web'));
=======
        expect(error.toString(), contains('DefaultFirebaseOptions have not been configured for web'));
>>>>>>> refs/remotes/Nabih/main
      }
    });

    test('Throws UnsupportedError for macOS', () {
      // Simulate macOS platform
      try {
        DefaultFirebaseOptions.currentPlatform;
        fail('Expected UnsupportedError');
      } catch (error) {
        expect(error, isUnsupportedError);
<<<<<<< HEAD
        expect(
            error.toString(),
            contains(
                'DefaultFirebaseOptions have not been configured for macos'));
      }
    });
  });
}
=======
        expect(error.toString(), contains('DefaultFirebaseOptions have not been configured for macos'));
      }
    });

  });
}
>>>>>>> refs/remotes/Nabih/main
