import 'package:flutter/material.dart';

class DrinkKinds extends StatefulWidget {
  const DrinkKinds({super.key});

  @override
  State<DrinkKinds> createState() => _DrinkKindsState();
}

class _DrinkKindsState extends State<DrinkKinds> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _brand = '';
  String _percentage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Makes fields full width
            children: [
              const Text(
                'ADD DRINKS',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Drinks Name
              TextFormField(
                decoration: _inputDecoration('Drinks Name'),
                onChanged: (value) => _name = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Drinks name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              // Brand
              TextFormField(
                decoration: _inputDecoration('Brand'),
                onChanged: (value) => _brand = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Brand';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              // Percentage
              TextFormField(
                decoration: _inputDecoration('Percentage'),
                keyboardType: TextInputType.number,
                onChanged: (value) => _percentage = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Percentage';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),

              // Submit Button
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Drinks Name: $_name');
                    print('Brand: $_brand');
                    print('Percentage: $_percentage');
                  }
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'ADD DRINK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 10, 160, 227), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
