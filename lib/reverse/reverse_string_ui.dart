import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revesestring/reverse/reverse_viewmodel.dart';

class ReverseView extends StatelessWidget {
  ReverseView({Key? key}) : super(key: key);
 final ReverseViewModel viewModel = Get.put(ReverseViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(viewModel.statement),
              const SizedBox(
                height: 20,
              ),
              Text(viewModel.reverseString ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
