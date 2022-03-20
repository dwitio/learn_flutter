import 'package:flutter/material.dart';

class DraggableDragtarget extends StatefulWidget {
  const DraggableDragtarget({key}) : super(key: key);

  @override
  State<DraggableDragtarget> createState() => _DraggableDragtargetState();
}

class _DraggableDragtargetState extends State<DraggableDragtarget> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.7),
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
              Draggable(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: const SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.7),
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              )
            ],
          ),
          DragTarget(
              onWillAccept: (value) => true,
              onAccept: (value) {isAccepted = true; targetColor = value;},
              builder: (context, candidateData, rejectedData) {
                return (isAccepted) ? SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: targetColor,
                    shape: const StadiumBorder(),
                  ),
                ) : const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                );
            },
          )
        ],
      ),
    );
  }
}
