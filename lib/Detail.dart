import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Column(
        children: <Widget>[Text('Hello'), TestId()],
      ),
    );
  }
}

class TestId extends StatefulWidget {
  @override
  _TestIdState createState() => _TestIdState();
}

class _TestIdState extends State<TestId> {
  int i = 0;
  increment() {
    setState(() {
      i++;
    });
  }

  decrement() {
    setState(() {
      i--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('$i'),
        Container(
          child: FloatingActionButton(
            onPressed: () {
              increment();
            },
            child: Icon(Icons.add),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            decrement();
          },
          child: Icon(Icons.remove),
        )
      ],
    );
  }
}
