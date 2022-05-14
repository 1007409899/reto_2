import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:reto_2/viewmodels/viewmodel.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Consumer<ViewModelCar>(builder: (context, dataimc, child) {
      return Container(
        color: Colors.white,
        width: screen.width,
        height: screen.height,
        child: Center(
            //  child: Text((dataimc.description)),
            ),
      );
    });
  }
}
