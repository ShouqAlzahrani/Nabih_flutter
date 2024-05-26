import 'package:flutter_test/flutter_test.dart';
import 'package:nabih/firebase_options.dart';

void main() {
  group('DefaultFirebaseOptions', () {
    test('Returns correct FirebaseOptions for Android', () {
      // Simulate Android platform
      expect(DefaultFirebaseOptions.currentPlatform,
          DefaultFirebaseOptions.android);
    });

    test('Returns correct FirebaseOptions for iOS', () {
      // Simulate iOS platform
      expect(
          DefaultFirebaseOptions.currentPlatform, DefaultFirebaseOptions.ios);
    });

    test('Throws UnsupportedError for Web', () {
      // Simulate Web platform
      try {
        DefaultFirebaseOptions.currentPlatform;
        fail('Expected UnsupportedError');
      } catch (error) {
        expect(error, isUnsupportedError);
        expect(
            error.toString(),
            contains(
                'DefaultFirebaseOptions have not been configured for web'));
      }
    });

    test('Throws UnsupportedError for macOS', () {
      // Simulate macOS platform
      try {
        DefaultFirebaseOptions.currentPlatform;
        fail('Expected UnsupportedError');
      } catch (error) {
        expect(error, isUnsupportedError);
        expect(
            error.toString(),
            contains(
                'DefaultFirebaseOptions have not been configured for macos'));
      }
    });
  });
}
