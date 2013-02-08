import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';


var ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING = 42;

void main() {
  useVMConfiguration();

  group ("Tests", (){
    test("The answer to the ultimate question of life, the universe, and everything, should be 42", (){
      expect(ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING, 42);
    });
  });
}
