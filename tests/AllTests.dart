import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';

void main() {
  useVmConfiguration();

  group ("Publisher", (){
    
    test("Assert that unittest lib works", (){
      expect(false,isTrue);
    });
  });
}
