import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/auth.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    
    // return Home or Auth widget
    if(user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}