import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(14, -0.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-14, -0.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFFAB40),
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 100.0, sigmaX: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' تهران📍',
                      style: TextStyle(
                          fontFamily: 'dana',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'صبح بخیر ',
                      style: TextStyle(
                          fontFamily: 'dana',
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    Image.asset('assets/images/1.png'),
                    Center(
                      child: Text(
                        '21° C',
                        style: TextStyle(
                            fontFamily: 'dana',
                            color: Colors.white,
                            fontSize: 54,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Center(
                      child: Text(
                        'بارانی',
                        style: TextStyle(
                          fontFamily: 'dana',
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'جمعه 21 مرداد _ 7:30',
                        style: TextStyle(
                          fontFamily: 'dana',
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'غروب',
                                  style: TextStyle(
                                      fontFamily: 'dana',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: const Color.fromARGB(
                                          255, 176, 173, 173)),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '18:46',
                                  style: TextStyle(
                                      fontFamily: 'dana',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/12.png',
                              scale: 8,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'طلوع',
                                  style: TextStyle(
                                      fontFamily: 'dana',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: const Color.fromARGB(
                                          255, 176, 173, 173)),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '6:32',
                                  style: TextStyle(
                                      fontFamily: 'dana',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/11.png',
                              scale: 8,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: Colors.grey,
                          ),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
