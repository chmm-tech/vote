import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vote/constants.dart';
import 'package:vote/screens/home_screen.dart';
import 'package:vote/screens/launch_screen.dart';
import 'package:vote/screens/result_screen.dart';
import 'package:vote/state/vote.dart';

void main() => runApp(VoteApp());

class VoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VoteState()),

      ],
      child: MaterialApp(
        initialRoute:"/" ,
        routes:{
          "/":(context) => Scaffold(
            body: LaunchScreen(),
          ),
          "/home":(context) => Scaffold(
            appBar: AppBar(
              title: Text(kAppName),
            ),
            body: HomeScreen(),
          ),
          "/result":(context) => Scaffold(
            appBar: AppBar(
              title: Text('Result'),
              leading: IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            body: ResultScreen(),
          )
        }
      ),
    );
  }
}
