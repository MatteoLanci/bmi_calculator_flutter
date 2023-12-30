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
  var _weight = 0.0;
  var _height = 0.0;
  var _age = 0.0;
  var _bmrResult = 0.0;

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _weight = double.parse(value);
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Peso in Kg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _height = double.parse(value);
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Altezza in cm'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _age = double.parse(value);
                    },
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
                        onChanged: (value) {
                          setState(() {
                            _gender = value as String;
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('$_bmrResult')
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

                if (_gender == 'uomo') {
                  _bmrResult = 88.362 +
                      (13.397 * _weight) +
                      (4.799 * _height) -
                      (5.677 * _age);
                } else if (_gender == 'donna') {
                  _bmrResult = 447.593 +
                      (9.247 * _weight) +
                      (3.098 * _height) -
                      (4.330 * _age);
                }

                setState(() {
                  // Aggiorna lo stato per visualizzare il risultato
                  _bmrResult = _bmrResult;
                });
              },
              child: const Text('Ottieni Risultato'),
            ),
          ],
        ),
      ),
    );
  }
}
