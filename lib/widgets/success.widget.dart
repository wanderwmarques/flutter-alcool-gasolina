import 'package:flutter/material.dart';
import 'loadin-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.reset,
    @required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(result,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                  fontFamily: "Big Shoulders Display")),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            text: "Calcular novamente",
            invert: true,
            busy: false,
            func: reset,
          ),
        ],
      ),
    );
  }
}
