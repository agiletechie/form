import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horecah/constants.dart';

class FormTwo extends StatefulWidget {
  const FormTwo({super.key, required this.controller});
  final PageController controller;
  @override
  State<FormTwo> createState() => _FormOneState();
}

class _FormOneState extends State<FormTwo> {
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
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
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
