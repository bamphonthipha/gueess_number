import 'dart:io';
import 'dart:math';

import 'package:gueess_number/game.dart';

void main(){
  var game = Game();

  int  result = 0;
  do{
    stdout.write('Please guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if(guess == null){
      print('Please enter number only');
      continue;
    }
     result = game.doGuess(guess);

    while(result == 1){
      stdout.write('Do you want to play again?(Y/N) : ');
      var yes = stdin.readLineSync();
      if(yes == 'y' || yes == 'Y'){
        game = Game();
        result = 0;
      }else if(yes == 'n' || yes == 'N'){
          break;
      }else{
        print('Please answer(Y/N)');
      }
    };

  } while (result != 1);
}
