import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 40,
      //   leading: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 28),
      //     child: Icon(
      //       Icons.sort,
      //       size: 40,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: (450),
                  height: (520),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            //  color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.orange, Colors.red, Colors.black],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 85),
                          child: Container(
                            margin: EdgeInsets.only(top: 120),
                            child: Container(
                              child: Icon(
                                Icons.music_note,
                                color: Colors.white.withOpacity(0.7),
                                size: 250,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 295,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     Color(0xFF343434).withOpacity(0.3),
                    //     Color(0xFF343434).withOpacity(0.5),
                    //   ],
                    // ),
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Sailors \n Layon ft Skilash",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "0.00",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                // showValueIndicator: ShowValueIndicator.always,
                                inactiveTrackColor: Colors.black,
                                activeTrackColor: Colors.red,
                                thumbColor: Color(0xFFEB1555),
                                overlayColor: Color(0x29EB1555),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 5.0),
                              ),
                              child: Slider(
                                label: "here",
                                activeColor: Colors.red,
                                value: _value,
                                min: 0,
                                max: 300.0,
                                onChanged: (double newValue) {
                                  setState(
                                    () {
                                      _value = newValue;
                                    },
                                  );
                                },
                              ),
                            ),
                            Text(
                              "2.40",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.skip_previous_rounded,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                            InkWell(
                              onTap: () {},
                              child: AnimatedIcon(
                                icon: AnimatedIcons.pause_play,
                                color: Colors.red,
                                progress: AlwaysStoppedAnimation(2),
                                size: 100,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.thumb_down_alt_outlined,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.skip_next,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
