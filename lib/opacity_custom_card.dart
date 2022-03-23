import 'package:flutter/material.dart';

class OpacityCustomCard extends StatelessWidget {
  const OpacityCustomCard({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Card Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff8c062f),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfffe5788), Color(0xfff5605D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(image: AssetImage('images/pattern.png'),
                              fit: BoxFit.contain,
                              repeat: ImageRepeat.repeat
                          )
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/bg.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              'Beautiful Sunset at Paddy Field',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xfff56d5d), fontSize: 25
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Posted on ',
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12
                                    ),
                                  ),
                                  Text(
                                    'March 23, 2022',
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xfff56d5d), fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: const [
                                Spacer(flex: 10,),
                                Icon(Icons.thumb_up, size: 18, color: Colors.grey,),
                                Spacer(flex: 1),
                                Text('99', style: TextStyle(color: Colors.grey),),
                                Spacer(flex: 5,),
                                Icon(Icons.comment, size: 18, color: Colors.grey,),
                                Spacer(flex: 1,),
                                Text('888', style: TextStyle(color: Colors.grey),),
                                Spacer(flex: 10,),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
