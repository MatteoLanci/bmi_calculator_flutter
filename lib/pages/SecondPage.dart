import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String firstName;
  final String lastName;

  const SecondPage(
      {super.key, required this.firstName, required this.lastName});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var _gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Second Page'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Benvenuto ${widget.firstName}, ora qualche domanda su di te!'),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Peso in Kg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Altezza in cm'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Età'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        value: _gender,
                        items: const [
                          DropdownMenuItem(
                            value: '',
                            child: Text('Seleziona un genere'),
                          ),
                          DropdownMenuItem(
                            value: 'uomo',
                            child: Text('Uomo'),
                          ),
                          DropdownMenuItem(
                            value: 'donna',
                            child: Text('Donna'),
                          ),
                          DropdownMenuItem(
                            value: 'altro',
                            child: Text('Altro'),
                          ),
                        ],
                        onChanged: (v) {}),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Elaboro...'),
                      ],
                    ),
                  ),
                );
              },
              child: const Text('Ottieni Risultato'),
            ),
          ],
        ),
      ),
    );
  }
}
