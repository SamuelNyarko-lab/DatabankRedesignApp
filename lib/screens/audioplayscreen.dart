// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AudioPlayScreen extends StatefulWidget {
  const AudioPlayScreen({Key? key}) : super(key: key);

  @override
  State<AudioPlayScreen> createState() => _AudioPlayScreenState();
}

class _AudioPlayScreenState extends State<AudioPlayScreen> {
  final audioplayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    final audioPlayer = AudioPlayer();
    Duration duration = Duration.zero;
    Duration position = Duration.zero;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 60,
          // decoration: BoxDecoration(
          //     border: Border.all(
          //   color: Colors.red,
          // )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: SizedBox(
                      //padding: EdgeInsets.all(30),
                      height: deviceHeight / 2.5,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('assets/images/b.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: deviceWidth,
                    child: Text(
                      'Why business should invest with Databank',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: deviceWidth,
                    child: Text(
                      'Mfund fact sheet',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: deviceWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0:41',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green[600],
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            value: 1.5,
                            max: 5,
                            min: 0,
                            onChanged: (value) async {},
                            inactiveColor: Colors.white,
                          ),
                        ),
                        Text(
                          '2:00',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: deviceWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color.fromRGBO(212, 223, 185, 1),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.fast_rewind_sharp,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow_sharp,
                            size: 40,
                            color: Colors.green[600],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.fast_forward_sharp,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 20,
                            color: Color.fromRGBO(212, 223, 185, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 160,
        child: MaterialButton(
          onPressed: () {},
          height: 35,
          minWidth: 45,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                'Add to briefcase',
                style: TextStyle(
                    // color: Color.fromRGBO(10, 153, 24, 1),
                    ),
              ),
              Icon(
                Icons.add,
                size: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
