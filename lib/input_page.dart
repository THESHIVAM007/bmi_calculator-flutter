import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';

const bottomContainerHeight = 60.0;
const activeCardColor = Color.fromARGB(182, 74, 75, 95);
const inactiveCardColor = Color.fromARGB(234, 25, 25, 29);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

void changeColor(int gender){

if(gender==1){
  if (  maleCardColor==inactiveCardColor) {
      maleCardColor=activeCardColor;
    femaleCardColor=inactiveCardColor;
  }else{
    maleCardColor=inactiveCardColor;
  }
}else{
  if (femaleCardColor==inactiveCardColor) {
    femaleCardColor=activeCardColor;
    maleCardColor = inactiveCardColor;
  }else{
    femaleCardColor = inactiveCardColor;
  }
}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:() {
                      setState(() {
                        
                      changeColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour:maleCardColor,
                      cardChild: IconContent(
                          cate: 'MALE', iconType: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap:() {
                      setState(() {
                        
                      changeColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                          cate: 'FEMALE', iconType: FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            color: Colors.pink[600],
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}