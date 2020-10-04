import 'package:flutter/material.dart';
import 'package:sentiment_analysis/components/styles.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // device size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // block the widgets inside the Scaffold to resize
      // themselves when the keyboard opens
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: customGradient,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height / 4.5,
              ),
              Text(
                'Sentiment Analysis',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5.0,
                      blurRadius: 7.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: _loading
                            ? Container(
                                width: 300.0,
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: controller,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 21.0,
                                        ),
                                        labelText: 'Enter a search term: ',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    )
                                  ],
                                ),
                              )
                            : Container(),
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _loading = false;
                              });
                            },
                            child: Container(
                              width: size.width - 180,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 17.0,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF56AB2F),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Text(
                                'Find Emotion',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
