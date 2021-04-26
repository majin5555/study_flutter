import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/**
 * @author: Majin
 * @date: 2021/4/21
 * @desc:   Animation   动画
 */

void main() {
  runApp(StudyAnimation());
}

class StudyAnimation extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Animation',
      color: Colors.orange,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
        ),
        body: DemoPage(),
      ),
    );
  }
}

///3
class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Image.asset("assets/images/logo.png"),
    );
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition(this.child, this.animation);

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Container(
        height: animation.value,
        width: animation.value,
        child: child,
      ),
      child: child,
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    animation= Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GrowTransition(LogoWidget(), animation);
  }
}

///2AnimatedWidget
// class AnimatedLogo extends AnimatedWidget {
//   AnimatedLogo({Key key, Animation<double> animation})
//       : super(key: key, listenable: animation);
//
//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return Center(
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 10),
//         height: animation.value,
//         width: animation.value,
//         child: Image.asset("assets/images/logo.png"),
//       ),
//     );
//   }
// }
//
// class DemoPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => DemoPageState();
// }
//
// class DemoPageState extends State<DemoPage>
//     with SingleTickerProviderStateMixin {
//   AnimationController controller;
//   Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(
//         vsync: this, duration: const Duration(milliseconds:3000));
//     animation = Tween<double>(begin: 0, end: 300).animate(controller);
//     controller.forward();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: AnimatedLogo(
//       animation: animation,
//     ));
//   }
// }

///1
// class DemoPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => DemoPageState();
// }
//
// class DemoPageState extends State<DemoPage>
//     with SingleTickerProviderStateMixin {
//   Animation<double> animation;
//   AnimationController controller;
//   AnimationStatus animationStatus;
//   double animationValue;
//
//   @override
//   void initState() {
//     super.initState();
//     controller =
//         AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     animation = Tween<double>(begin: 0, end: 300).animate(controller)
//       ..addListener(() {
//         setState(() {
//           animationValue = animation.value;
//         });
//       })
//       ..addStatusListener((status) {
//         setState(() {
//           animationStatus = status;
//         });
//       });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Column(
//           children: [
//             GestureDetector(
//               onTap: () {
//                 controller.reset();
//                 controller.forward();
//               },
//               child: RaisedButton(
//                 child: Text("start"),
//               ),
//             ),
//             Text("State" + animationStatus.toString(),
//                 textDirection: TextDirection.ltr),
//             Text("Value" + animationValue.toString(),
//                 textDirection: TextDirection.ltr),
//             Container(
//               width: animation.value,
//               height: animation.value,
//               child: Image.asset("assets/images/logo.png"),
//             ),
//           ],
//         ));
//   }
// }
