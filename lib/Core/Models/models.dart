
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sender extends StatelessWidget {
  final dynamic message;
  final String time;
  final dynamic img;

  const Sender({
    Key? key,
    this.message,
    required this.time,
    this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (message != null && img == null) ?
      Align(
      alignment: Alignment.centerRight,
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: Sendermessage(),
        child: Padding(
          padding: const EdgeInsets.only(right: 1.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            margin: const EdgeInsets.only(top: 10),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(25),
              ),
              color: const Color(0xFF005C4B),
            ),
            child:
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                    child: Column(
                      children: [
                        if (message != null)
                          Text(
                            message!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        if (img != null)
                          Image.network(
                            img,
                            fit: BoxFit.cover,
                          ),
                      ],
                    )
                ),
                const SizedBox(width: 8),
                Text(
                  time,
                  style: const TextStyle(color: Colors.white70, fontSize: 10),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.done_all, color: Colors.white70, size: 14),
              ],
            ),
          ),
        ),
      ),
    ) :
    Align(
      alignment: Alignment.centerRight,
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: Sendermessage(),
        child: Padding(
          padding: const EdgeInsets.only(right: 1.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            margin: const EdgeInsets.only(top: 10),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(25),
              ),
              color: const Color(0xFF005C4B),
            ),
            child:
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                    child: Column(
                      children: [
                        if (message != null)
                          Text(
                            message!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        if (img != null)
                          Image.network(
                            img,
                            fit: BoxFit.cover,
                          ),
                      ],
                    )
                ),
                const SizedBox(width: 8),
                Text(
                  time,
                  style: const TextStyle(color: Colors.white70, fontSize: 10),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.done_all, color: Colors.white70, size: 14),
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
    path.lineTo(size.width - 10, 0);
    path.lineTo(size.width - 10, 0);
    path.quadraticBezierTo(size.width , 0, size.width ,0);
    path.lineTo(size.width+size.height, -90);
    path.lineTo(size.width-10,25);
    path.lineTo(size.width-10, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Reciever extends StatelessWidget {
  final dynamic message;
  final String time;
  final dynamic img;

  const Reciever({
    Key? key,
     this.message,
    required this.time,
    this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final maxBubbleWidth = MediaQuery.of(context).size.width * 0.7;
    return Align(
      alignment: Alignment.centerLeft,
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: Recivermessage(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          margin: const EdgeInsets.only(top: 4),
          constraints: BoxConstraints(maxWidth: maxBubbleWidth),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(10),
            ),
            color: const Color(0xFF202C33),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          if (message != null)
                            Text(
                              message!,
                              style: const TextStyle(color: Colors.white),
                            ),
                          if (img != null)
                            Image.network(
                              img,
                              fit: BoxFit.cover,
                            ),
                        ],
                      )
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.white70, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Recivermessage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(-15, 20);
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(15, size.height);
    path.lineTo(15, 20);
    path.quadraticBezierTo(0,-20, -20, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}