// TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                 ),
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Validate will return true if the form is valid, or false if
//                     // the form is invalid.
//                     if (_formKey2.currentState!.validate()) {
//                       // Process data.
//                     }
//                   },
//                   child: const Text('Submit'),
//                 ),
//               ),

import 'package:flutter/material.dart';

class FormFieldSample extends StatefulWidget {
  const FormFieldSample({super.key});
  @override
  State<FormFieldSample> createState() => _FormFieldSampleState();
}

class _FormFieldSampleState extends State<FormFieldSample> {
  // Initially password is obscure
  bool _obscureText = true;

  String _password = "";

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password',
                  icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Icon(Icons.lock))),
              validator: (val) =>
                  val!.length < 6 ? 'Password too short.' : null,
              onSaved: (val) => _password = val!,
              obscureText: _obscureText,
            ),
            new ElevatedButton(
                onPressed: _toggle,
                child: new Text(_obscureText ? "Show" : "Hide"))
          ],
        ),
      ),
    );
  }
}
