import 'package:matches/matches.dart';
import 'package:test/test.dart';


void main() {
  group('Result', () {
    test('could be Pending', () {
      final Result<int> r = Pending<int>();
      
      final t = switch (r) {
        Pending() => true,
        _ => false,
      };

      expect(t, isTrue);
    });

    test('could be Loading', () {
      final Result<int> r = Loading<int>(0.5);
      
      switch (r) {
        case Loading(progress: final p): {
          expect(p, 0.5);
        }
        default: fail('Should be Loading');
      }
    });
  });
}
