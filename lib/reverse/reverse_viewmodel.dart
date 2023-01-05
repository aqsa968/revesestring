import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ReverseViewModel extends GetxController {
  String statement = "my name is aqsa i am from pakistan";
//  String receivedString = "Hello";
  String reverseString = "";

  @override
  void onInit() {
    // reverseWord();
    splitEachWord();
    super.onInit();
  }

  void splitEachWord() {
    List<String> words = statement.split(' ');
    print(words);
    for (String word in words) {
      print("word");
      print(word);
      reverseWord(word);
    }
  }

  void reverseWord(String receivedString) {
    int length = receivedString.length;
    length = length - 1;
    for (int i = length; i > (-1); i--) {
      reverseString += receivedString[i];
    }

    // Complete Paragraph
    reverseString += ' ';
    print("Reversed Word Paragraph");
    print(reverseString);
  }
}
