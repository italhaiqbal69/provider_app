import 'package:flutter/material.dart';
import 'package:my_app/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    final slideProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Consumer<SliderProvider>(
          builder: (context, value, child) =>
              Slider(value: value.value, onChanged: slideProvider.opacity),
        ),
        Consumer<SliderProvider>(
          builder: (context, vm, child) {
            return Row(
              children: [
                Container(
                  color: Colors.red.withOpacity(vm.value),
                  height: 100,
                  width: 200,
                ),
                Container(
                  color: Colors.green.withOpacity(vm.value),
                  height: 100,
                  width: 160,
                ),
              ],
            );
          },
        ),
      ],
    ));
  }
}
