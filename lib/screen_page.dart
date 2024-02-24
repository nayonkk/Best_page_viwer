import 'package:bext_pages_viwer/pages/donepage.dart';
import 'package:bext_pages_viwer/pages/page_1.dart';
import 'package:bext_pages_viwer/pages/page_2.dart';
import 'package:bext_pages_viwer/pages/page_3.dart';
import 'package:bext_pages_viwer/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homepages extends StatefulWidget {
  const homepages({super.key});

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> {
  PageController _controller = PageController();
  bool OnPage_change=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page_viwer',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                    OnPage_change=(index==3);
              });
          
              
            },
            controller: _controller,
            children: const [
              page_1(),
              page_2(),
              page_3(),
              page_4(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: const Text(
                        'skip',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SmoothPageIndicator(
                      effect:const WormEffect(
                          dotColor: Colors.indigo,
                          activeDotColor: Colors.white),
                      controller: _controller,
                      count: 4),

                  OnPage_change?

                  GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration:const Duration(microseconds: 500),
                            curve: Curves.bounceOut);
                      },
                      child: GestureDetector( onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>donePage()));
                      },
                        child: const Text(
                          'done',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )):  GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration:const Duration(microseconds: 500),
                            curve: Curves.bounceOut);
                      },
                      child: const Text(
                        'next',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),   
                ],
              ))
        ],
      ),
    );
  }
}
