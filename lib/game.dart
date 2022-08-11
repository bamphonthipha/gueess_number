import 'dart:math';

class Game{
  int answer = 0;

  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;
    print('ค่าคำตอบคือ $answer');
  }

  int doGuess(int num){
    if(num > answer){
      print('$num is too high');
      return 0;

    }else if(num < answer){
      print('$num is too low');
      return 0;
    }else {
      print('$num is correct');
       return 1;
    }
  }

}