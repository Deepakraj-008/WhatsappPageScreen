
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sender extends StatelessWidget {
  final String message;
  final String time;

  const Sender({
    Key? key,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: Sendermessage(),
        child: Padding(
          padding: const EdgeInsets.only(right: 1.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            margin: const EdgeInsets.only(top: 10),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(20),
              ),
              color: const Color(0xFF005C4B),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(message, style: const TextStyle(color: Colors.white, fontSize: 15)),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(time, style: const TextStyle(color: Colors.white70, fontSize: 11)),
                    const SizedBox(width: 4),
                    const Icon(Icons.done_all, color: Colors.white70, size: 16),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Reciever extends StatelessWidget {
  final String message;
  final String time;
  final bool isEdited;

  const Reciever({
    Key? key,
    required this.message,
    required this.time,
    this.isEdited = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: Recivermessage(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            margin: const EdgeInsets.only(top: 8),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(10),
              ),
              color: const Color(0xFF202C33),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(message, style: const TextStyle(color: Colors.white, fontSize: 15)),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(time, style: const TextStyle(color: Colors.white70, fontSize: 11)),
                    if (isEdited)
                      const Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text("Edited", style: TextStyle(color: Colors.grey, fontSize: 11)),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Sendermessage extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width - 10, -10);
    path.quadraticBezierTo(size.width , 0, size.width ,0);
    path.lineTo(size.width+size.height, -20);
    path.lineTo(size.width-10,14);
    path.lineTo(size.width-10, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Recivermessage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(30, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(30, size.height);
    path.lineTo(30, 15);
    path.quadraticBezierTo(10,-10, -10, 10);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}