import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailCompare extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    const Color colortwo = Color.fromRGBO(114, 91, 238, 1);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colortwo,
          elevation: 0,
          title: Text('Compare'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: colortwo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset('assets/img/4.png', width: 100, height: 100),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset('assets/img/4.png', width: 100, height: 100),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                    Container(
                      child: Column(

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}