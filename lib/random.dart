import 'dart:math';
import 'dart:ui';

Color getRandomColor() {

  //get random color components values
  Random random = Random();
  int red = random.nextInt(255);
  int blue = random.nextInt(255);
  int green = random.nextInt(255);

  //a random color, where alpha equals 255, which means that opacity equals 1.0
  return Color.fromARGB(255, red, green, blue);
}