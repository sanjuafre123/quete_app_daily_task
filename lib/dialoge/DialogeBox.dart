
import 'package:flutter/material.dart';

class DialogueScreen extends StatefulWidget {
  const DialogueScreen({super.key});

  @override
  State<DialogueScreen> createState() => _DialogueScreenState();
}

class _DialogueScreenState extends State<DialogueScreen> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          centerTitle: true,
          title: const Text('DialogeBox',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 23),),
        ),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton.tonal(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => Colors.teal.shade300,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      title: Text('Alert this can be harmful for the device',style: TextStyle(fontSize: 20),),
                    ),
                  );
                },
                child: const Text('Warning'),
              ),
              FilledButton.tonal(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => Colors.teal.shade300,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      title: const Text('Do really want to delete'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('No'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Alert'),
              ),
              FilledButton.tonal(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(
                    (states) => Colors.teal.shade300,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextField(
                          decoration: const InputDecoration(hintText: 'Name',),controller: txtName,
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              txtName = txtName;
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('TextField'),
              ),
              Text(txtName.text,style: const TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController txtName = TextEditingController();
