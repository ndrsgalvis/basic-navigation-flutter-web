import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_web_app/providers/counter_provider.dart';
import 'package:flutter_web_app/ui/shared/custom_app_menu.dart';

import '../shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  
  int counter = 15;

  CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: _CounterProviderPageBody(counter: counter)
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [

          const CustomAppMenu(),

          const Spacer(),
           const Text('Counter Provider'),
           FittedBox(
             fit: BoxFit.contain,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text(
                'Contador provider: ${counterProvider.counter}',
                style: const TextStyle(
                    fontSize: 35, 
                    fontWeight: FontWeight.bold
                  ),
                       ),
             ),
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                color: Colors.pink, 
                onPressed: () => counterProvider.decrement(), 
                text: 'Restar - ',
              ),
              CustomFlatButton(
                color: Colors.green, 
                onPressed: () => counterProvider.increment(), 
                text: 'Sumar +',
              ),
            ]
          ),

          const Spacer(),
  
        ],
      ),
    );
  }
}

