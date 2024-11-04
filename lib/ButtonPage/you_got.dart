import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numeric Keyboard',
      home: NumericKeyboardExample(),
    );
  }
}

class NumericKeyboardExample extends StatefulWidget {
  @override
  _NumericKeyboardExampleState createState() => _NumericKeyboardExampleState();
}

class _NumericKeyboardExampleState extends State<NumericKeyboardExample> {
  TextEditingController _controller = TextEditingController();

  void _onKeyPress(String value) {
    setState(() {
      _controller.text += value;
    });
  }

  void _onDelete() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _controller.text =
            _controller.text.substring(0, _controller.text.length - 1);
      }
    });
  }

  void _onClear() {
    setState(() {
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeric Keyboard Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter numbers...',
              ),
            ),
          ),
          Spacer(),
          NumericKeyboard(
            onKeyPress: _onKeyPress,
            onDelete: _onDelete,
            onClear: _onClear,
          ),
        ],
      ),
    );
  }
}

class NumericKeyboard extends StatelessWidget {
  final Function(String) onKeyPress;
  final Function onDelete;
  final Function onClear;

  NumericKeyboard({
    required this.onKeyPress,
    required this.onDelete,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['1', '2', '3'].map((value) => _buildKey(value)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['4', '5', '6'].map((value) => _buildKey(value)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['7', '8', '9'].map((value) => _buildKey(value)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () => onDelete(), child: Text('DEL')),
              ElevatedButton(
                  onPressed: () => onKeyPress('0'), child: Text('0')),
              ElevatedButton(onPressed: () => onClear(), child: Text('CLEAR')),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildKey(String value) {
    return ElevatedButton(
      onPressed: () => onKeyPress(value),
      child: Text(value),
    );
  }
}
