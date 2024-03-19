import 'dart:math';
import 'dart:ui';

///returns a random color
Color getRandomColor() {

  //get random color components values
  final Random random = Random();
  final int red = random.nextInt(255);
  final int blue = random.nextInt(255);
  final int green = random.nextInt(255);

  //alpha equals 255, which means the color's opacity equals 1.0
  const int alpha = 255;

  //a random color
  return Color.fromARGB(alpha, red, green, blue);
}
