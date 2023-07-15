import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myshop/controllers/splashcontroller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Spacer(),
            Text("MyShop",style:TextStyle(color:Color(0xff3451FF),fontSize: 35,fontWeight: FontWeight.w800)),
            SizedBox(height: 15,),
            Text('welcome to myShop App',style:TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500)),
            Spacer(),
            Text('developed by \n Mahdi Rostami \n University Pirozan',style: TextStyle(fontSize: 13,color:Colors.grey),textAlign: TextAlign.center,),
            SizedBox(height: 15,)
          ],
        ),
      )
    );
  }
}
