import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String email;
  const HomePage({super.key, required this.email});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  late String _email;

  @override
  void initState() {
    super.initState();
    _email = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(_email),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _email += 'a';
                  });
                },
                child: const Row(
                  children: [Text('Adicionar letra')],
                ))
          ],
        ),
      ),
    );
  }
}
