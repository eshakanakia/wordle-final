//String[] words = {"skunk", "adieu", "ouija", "squab", "pzazz", "ivory", "vixen", "haiku", "blitz", "crypt"};
//int index = int(random(words.length));
//String word1 = words[index];
import java.util.*;
String word1 = "skunk";
char[] word = word1.toCharArray();

char[] guess = new char[]{'_', '_', '_', '_', '_'};

void setup() {
}
void draw() {
}

void keyPressed() {
  if (65<=keyCode && keyCode <=90) {
    for (int i = 4; i >= 0; i--) {
      if (guess[i] != '_' && i != 4) {
        guess[i+1] = key;
        break;
      } else if (i == 0 && guess[i] == '_') {
        guess[i] = key;
        break;
      }
    }
  }
  if (key == BACKSPACE) {
    for (int i = 4; i >= 0; i--) {
      if (guess[i] != '_') {
        guess[i] = '_';
        break;
      }
    }
  }
  for (int i = 0; i < 4; i++) {
    
    }
  for (int j = 0; j < 5; j++) {
    print(guess[j]);
  }
  println("");
  if (keyCode == ENTER || keyCode == RETURN) {
    //if(guess.length<5){
    //  println("Your gues is too short. Try again!");
    //}
  }
}
