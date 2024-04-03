import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:horecah/constants.dart';
import 'package:horecah/view/pages/one.dart';
import 'package:horecah/view/pages/two.dart';

class HorecahForm extends StatefulWidget {
  const HorecahForm({super.key});

  @override
  State<HorecahForm> createState() => _FormOneState();
}

class _FormOneState extends State<HorecahForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SvgPicture.asset('assets/horecah.svg')),
        leadingWidth: 90,
        backgroundColor: kThemeColor,
        bottom: AppBar(
          backgroundColor: kThemeColor,
          title: const Text(
            'Form 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: PageView(
          controller: _pageController,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            FormOne(controller: _pageController),
            FormTwo(
              controller: _pageController,
            )
          ],
        ),
      ),
    );
  }
}
