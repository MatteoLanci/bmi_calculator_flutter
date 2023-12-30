import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/hero_img.webp',
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Riempi i campi obbligatori';
                          }
                          return null;
                        },
                        controller: firstNameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Nome *'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Riempi i campi obbligatori';
                          }
                          return null;
                        },
                        controller: lastNameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Cognome *'),
                      ),
                    ],
                  )),
            ),
            ElevatedButton(
              onPressed: () {
                String firstName = firstNameController.text;
                String lastName = lastNameController.text;

                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/secondpage', arguments: {
                    'firstName': firstName,
                    'lastName': lastName
                  });
                }
              },
              child: const Text("Inizia a calcolare il BMR"),
            ),
          ],
        ),
      ),
    );
  }
}
