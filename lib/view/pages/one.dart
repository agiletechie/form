import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horecah/constants.dart';

class FormOne extends StatefulWidget {
  const FormOne({super.key, required this.controller});

  final PageController controller;

  @override
  State<FormOne> createState() => _FormOneState();
}

class _FormOneState extends State<FormOne> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  static const List<String> cityList = [
    'Bengaluru',
    'Chennai',
    'Gurgaon',
    'Mumbai'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size * 0.02),
                  const Text(
                    'Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: size * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: size * 0.02),
                  const Text(
                    'Mobile Number',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: size * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: size * 0.02),
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: size * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: size * 0.02),
                  const Text(
                    'City',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: size * 0.01),
                  DropdownButtonFormField<String>(
                    // value: _selectedCity,
                    alignment: Alignment.bottomCenter,
                    hint: const Text('Select'),
                    items: cityList.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {},

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              widget.controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kThemeColor,
            ),
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
