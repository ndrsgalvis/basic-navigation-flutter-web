import 'package:flutter/material.dart';
import 'package:flutter_web_app/ui/shared/custom_app_menu.dart';

import '../shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [


          const Spacer(),
           const Text('Contador stateful'),
           FittedBox(
             fit: BoxFit.contain,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text(
                'Contador: $counter',
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
                onPressed: () => setState( ()=> counter--), 
                text: 'Restar - ',
              ),
              CustomFlatButton(
                color: Colors.green, 
                onPressed: () => setState( ()=> counter++), 
                text: 'Sumar +',
              ),
            ]
          ),

          const Spacer(),
  
        ],
      );
  }
}

