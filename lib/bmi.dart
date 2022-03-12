import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled5/result%20.dart';
import 'package:untitled5/styles/icon_broken.dart';


class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var phoneController = TextEditingController();

  var ismale = false;

  var isfemale = false;
  var age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.4),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = true;
                              isfemale=false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: ismale
                                  ? Colors.blueGrey.withOpacity(0.6)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                            ),
                            width: 120,
                            height: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Image(
                                    image: AssetImage('assets/images/boy.png'),
                                    fit: BoxFit.cover,
                                    height: 130,
                                    width: 100,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = false;
                              isfemale=true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isfemale
                                  ? Colors.blueGrey.withOpacity(0.6)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                            ),
                            width: 120,
                            height: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Image(
                                    image: AssetImage('assets/images/girl.png'),
                                    fit: BoxFit.cover,
                                    height: 130,
                                    width: 100,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: TextFormField(

                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'you must enter your name';
                    }
                    if (value.length < 9) {
                      return 'must be enter at least 8 characters';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    helperText: 'At least 8 characters',
                    prefixIcon: Icon(IconBroken.Profile),
                    labelText: 'Enter Your Name',
                    helperStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: TextFormField(
                  controller: phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'you must enter your phone';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Enter Your Phone',
                    prefixIcon: Icon(IconBroken.Call),
                    helperStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Age',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      child: Icon(Icons.remove_outlined),
                      mini: true,
                      backgroundColor: Colors.blueGrey,
                      heroTag: 'remove',
                    ),
                  ],
                ),
                Text(
                  '$age',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                      ),
                      mini: true,
                      backgroundColor: Colors.blueGrey,
                      heroTag: 'add',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20.0),
                 color: Colors.blueGrey
                ),
                width: double.infinity,
                child:MaterialButton(

                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => result(
                            name: nameController.text,
                            ismale: ismale?'male':'female',
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
