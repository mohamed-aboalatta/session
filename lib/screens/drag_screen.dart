import 'package:flutter/material.dart';

class DraggableExample extends StatefulWidget {
  @override
  _DraggableExampleState createState() => _DraggableExampleState();
}

class _DraggableExampleState extends State<DraggableExample> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Draggable Widget Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Draggable<Color>(
              data: Colors.deepOrange,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange.withOpacity(0.7),
                child: Icon(Icons.directions_run, color: Colors.white, size: 50),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Icon(Icons.directions_run, color: Colors.white54, size: 50),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
                child: Icon(Icons.directions_run, color: Colors.white, size: 50),
              ),
            ),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  color: candidateData.isEmpty ? caughtColor : Colors.green,
                  child: Center(
                    child: Text(
                      'Drop Here',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
