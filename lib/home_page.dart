import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
              ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Find the best parties near you.',
              style: TextStyle(
                color: Colors.yellow,
                height: 1.1,fontSize: 40
              ),),
              SizedBox(height: 30,),
              Text('Let us find you a party for your interest',
              style: TextStyle(
                color: Colors.green[300],
                fontSize: 25,
              ),),
              SizedBox(height: 300,),
              _isLogin?
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[900],
                    ),
                    child: Center(
                      child: Text('Start',style: TextStyle(
                        color: Colors.white,fontSize: 18
                      ),),
                    ),
                  ):
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text('Google+',style: TextStyle(
                              color: Colors.white, fontSize: 18
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text('Facebook',style: TextStyle(
                                color: Colors.white, fontSize: 18
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
