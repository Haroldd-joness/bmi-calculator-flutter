import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/buttonWidget.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: kInactiveCardColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: kLargeText),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText, style: kNormalText,),
                    Text(bmiResult, style: kBMIText,),
                    Text(interpretation, style: kBodyText, textAlign: TextAlign.center,),
                  ],
                ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
