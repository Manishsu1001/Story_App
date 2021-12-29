import 'package:flutter/material.dart';

void main() {
  runApp(const Stories());
}

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  int state = 1;
  String Main ='';
  String Opt_1 = '1';
  String Opt_2 = '-1';
  Color clr = Colors.indigo;
  Text headstyle(String S) {
    return Text(
      S,
      style: TextStyle(
        fontFamily: 'headings',
        fontSize: 30.0,
        color: Colors.white,
      ),
    );
  }


  Expanded btns(int X) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (state < 8) {
                if(state>=4){
                  clr = Colors.red;
                }
                if (X == 1) {
                  state = 2 * state;
                } else {
                  state = 2 * state + 1;
                }
              }
              else{
                state = 1;
                clr = Colors.indigo;
              }
              Main = storyline();
            });
          },
          child: headstyle(X == 1 ? Opt_1 : Opt_2 ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(clr),
          ),
        ),
      ),
      flex: 1,
    );
  }

  String storyline() {
    var arr = [
      'Once in a kingdom there lived a king with hundreds of her wives. He once went to a forest for hunting and found a tiger far away.',
      'The bullet didn\'t hit the tiger and tiger got alert. He started running here and there and meanwhile the king shot again...',
      'He knew the condition of tigers in his state, there were only a few tigers left so he didn\'t shoot it instead told forest minister to take care of the tiger and gave him some money but the minister took the money and ...',
      'The tiger was badly injured, the king and his ministers slowly started moving towards the injured tiger. The king handed over the gun to ministers and started walking towards the tiger alone, He touched the tiger and found...',
      'The tiger got to know the direction of bullet fired and started running towards one of the ministers but as the bullet could hit the minister king didn\'t shoot the tiger. The minister lied on the ground to save himself from the tiger.',
      'He thought the salary given by the king is less than he deserve so he took the money and used on his on well being. One day King was on a surprise visit and found that the tiger got skinnier than earlier. He went to the minister and...',
      'Even if the salary of minister was less still he somehow managed to help the tigers in the region and one day the king came on a surprise visit and found the tigers in a good condition and decided to ...',
      'The bullet just hit the tiger in it\'s ear and when king touched the tiger, Tiger stood up and tried to attack the king, it took a bite and ate the kings head, ministers in a flurry shot the tiger, both Tiger and King died at the moment.',
      'The bullet penetrated it\'s heart and left a hole behind, King was very happy and cut the head of tiger and ordered the minsters to place it at the entrance of the fort and celebrated that eve with the flesh of the tiger.',
      'Tiger came to know the minster is pretending to be dead and killed the minister and before the king could take another shot, the tiger ran away in the forest. Other ministers ran towards the injured person but couldn\'t save him. Tiger saved itself by running away.',
      'Tiger started running towards the king seeing gun in his hands. The king got frightened and couldn\'t shoot but his ministers took the shot and killed the tiger in once. King later on rewarded the minister who saved his life.',
      'Since the minister did these kind of things earlier also and was given many chances he was sent to the jail for 10 years. New forest minister was appointed who save the specie from getting extinct from his state and in a few years the number of tigers grew up to a significant number.',
      'Since the minister was a very old and a trust worthy, he gave a chance to the minister to explain, he spoke truth. The king gave him another chance for this honesty and increased his salary. The number of tigers increased to a significant number in a few years.',
      'Since the number of tigers were significant, the tiger again decided to hunt the tigers down again as it was his favorite thing to do but one day he was killed by one tiger, he was trying to kill by sword, The Bad King died in this manner.',
      'The king was very happy to know that even with this less money the minister helped the tigers. He rewarded him with a promotion and increment in the salary and gave him a region to rule on in gift. All were happy, the King, the Minister and the Tiger.',
    ];
    var fst = [
      'He Shot the Tiger',
      'Bullet hit the tiger',
      'Used money on himself',
      'The tiger was alive',
      'Tiger killed the minister',
      'Sent him to Jail',
      'Start Hunting Again',
      'The story is over',
      'The story is over',
      'The story is over',
      'The story is over',
      'The story is over',
      'The story is over',
      'The story is over',
      'The story is over',
    ];
    var snd = [
      'He didn\'t shoot the tiger',
      'The bullet didn\'t hit the tiger',
      'Took care of the tiger',
      'Tiger was Dead',
      'Tiger ran towards the King',
      'Gave him another chance',
      'Reward the minister',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
      'RESET STORY',
    ];
    Opt_1 = fst[state-1];
    Opt_2 = snd[state-1];
    return arr[state-1];
  }
  Text storyText(String S, int X) {
    return Text(
      Main,
      style: TextStyle(
        fontFamily: 'main',
        fontSize: 30.0,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Main = storyline();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    color: clr,
                    child: Center(child: headstyle('Story'))),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: storyText(Main, state),
                ),
                flex: 8,
              ),
              btns(1),
              btns(2),
            ],
          ),
        ),
      ),
    );
  }
}
