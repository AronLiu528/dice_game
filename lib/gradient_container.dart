import 'package:flutter/material.dart';
import 'package:flutter_01/dice_roller.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomRight;

//Solution_2
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, this.color4,
      {super.key});
      
  const GradientContainer.background({super.key})
      : color1 = const Color.fromARGB(255, 26, 2, 80),
        color2 = const Color.fromARGB(200, 26, 2, 80),
        color3 = const Color.fromARGB(150, 26, 2, 80),
        color4 = const Color.fromARGB(100, 26, 2, 80);

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3, color4],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  const Center(
        child: DiceRoller(),
      ),
      
    );
  }
}


// 原始
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 26, 2, 80),
//             Color.fromARGB(200, 26, 2, 80),
//             Color.fromARGB(150, 26, 2, 80),
//             Color.fromARGB(100, 26, 2, 80),
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: HelloText('Hello!!'),
//       ),
//     );
//   }
// }

// Solution_1
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: HelloText('Hello!!'),
//       ),
//     );
//   }
// }

// class HelloText extends StatelessWidget {
//   const HelloText(this.outputText, {super.key});

//   final String outputText;
//   @override
//   Widget build(context) {
//     return Text(
//       outputText,
//       style: const TextStyle(
//         fontSize: 28.0,
//         color: Colors.white,
//       ),
//     );
//   }
// }

