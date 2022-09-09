// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResourceDetailScreen extends StatefulWidget {
  const ResourceDetailScreen({Key? key}) : super(key: key);

  @override
  State<ResourceDetailScreen> createState() => _ResourceDetailScreenState();
}

class _ResourceDetailScreenState extends State<ResourceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: AutoSizeText(
                          'Saving now to secure your future later',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                        ),
                      ),
                      IconButton(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'Service - Databank Mfund',
                        style: TextStyle(
                          fontSize: 15.5,
                          //fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(170, 201, 171, 1),
                        ),
                      ),
                      AutoSizeText(
                        '4 mins read',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AutoSizeText(
                    'So UML can be described as a general purpose visual modelling language to visualize, specify, construct and document software system. Although UML is generally used to model software systems but it is not limited within this boundary. UML is not a programming language but tools can be used to generate code in various languages using UML diagrams.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 19,
                      //fontWeight: FontWeight.bold,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      'What we do?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'So UML can be described as a general purpose visual modelling language to visualize, specify, construct and document software system. Although UML is generally used to model software systems but it is not limited within this boundary. It is also used to model non software systems as well like process flow in a manufacturing unit etc. UML is not a programming language but tools can be used to generate code in various languages using UML diagrams. UML has a direct relation with object oriented analysis and design. After some standardization UML is become an OMG (Object Management Group) standard. So only static behaviour is not sufficient to model a system rather dynamic behaviour is more important than static behaviour. In UML there are five diagrams available to model dynamic nature and use case diagram is one of them. Now as we have to discuss that the use case diagram is dynamic in nature there should be some internal or external factors for making the interaction. These internal and external agents are known as actors. So use case diagrams are consists of actors, use cases and their relationships. The diagram is used to model the system/subsystem of an application. A single use case diagram captures a particular functionality of a system.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 19,
                      //fontWeight: FontWeight.bold,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 50,
          ),
          SizedBox(
            width: 130,
            child: MaterialButton(
              onPressed: () {},
              height: 45,
              color: Color.fromRGBO(7, 150, 25, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              minWidth: 100,
              child: AutoSizeText(
                'Invest now',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: MaterialButton(
              
                onPressed: () {},
                height: 50,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minWidth: 50,
                child: Icon(
                  Icons.arrow_circle_up,
                )),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: true,
    );
  }
}
