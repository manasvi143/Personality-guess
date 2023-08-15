import 'package:flutter/material.dart';
import 'package:personality_guess/screens/catagory_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  final _enteredNameController = TextEditingController();

  void _switchCatagoryScreen() {
    if (_enteredNameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Invalid inputs',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          content: const Text(
            'Please enter your name !!...',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Okay')),
          ],
        ),
      );
      return;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CatagoryScreen(),
        ));
  }

  @override
  void dispose() {
    _enteredNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _enteredNameController,
                maxLength: 20,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: Text('Enter your name',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer)),
                  prefixIcon: const Icon(Icons.send),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(color: Colors.green)),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              ElevatedButton(
                onPressed: _switchCatagoryScreen,
                style: Theme.of(context).elevatedButtonTheme.style,
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
