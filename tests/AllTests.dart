import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';

void main() {
  useVMConfiguration();

  group ("Tests", (){
    test("Assert that unittest lib works", (){
      expect(true,isTrue);
    });
  });
}
