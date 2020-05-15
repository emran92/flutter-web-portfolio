import 'package:carousel_pro/carousel_pro.dart';
import 'package:emran92/constants/app_color.dart';
import 'package:emran92/widgets/portfolio_details/portfolio_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = 200.0;
    var width = 120.0;
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Portfolio',
              style: GoogleFonts.righteous(fontSize: 30, color: primaryColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swipe left to see more...',
              style: GoogleFonts.righteous(fontSize: 15, color: primaryColor),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(50),
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: height,
                          width: width,
                          child: Carousel(
                            boxFit: BoxFit.scaleDown,
                            images: [
                              ExactAssetImage("images/payzocard/1.png"),
                              ExactAssetImage("images/payzocard/2.png"),
                              ExactAssetImage("images/payzocard/3.png"),
                              ExactAssetImage("images/payzocard/4.png"),
                            ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.white,
                            indicatorBgPadding: 5.0,
                            dotBgColor: Colors.transparent,
                            borderRadius: true,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      PortfolioDetails(
                        titleText: 'Payzo Card',
                        detailsText: 'Prepaid Card Solution',
                        madeWithText: 'Web app using Laravel',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: height,
                          width: width,
                          child: Carousel(
                            boxFit: BoxFit.scaleDown,
                            images: [
                              ExactAssetImage("images/newsflash/1.jpg"),
                              ExactAssetImage("images/newsflash/2.jpg"),
                              ExactAssetImage("images/newsflash/3.jpg"),
                              ExactAssetImage("images/newsflash/4.jpg"),
                            ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.white,
                            indicatorBgPadding: 5.0,
                            dotBgColor: Colors.transparent,
                            borderRadius: true,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      PortfolioDetails(
                        titleText: 'News Flash',
                        detailsText: 'News Sharing Portal',
                        madeWithText: 'Web and Android with Flutter and Laravel',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: height,
                        width: width,
                        child: Carousel(
                          boxFit: BoxFit.fitHeight,
                          images: [
                            ExactAssetImage("images/earthcam/1.jpg"),
                            ExactAssetImage("images/earthcam/2.jpg"),
                            ExactAssetImage("images/earthcam/3.jpg"),
                            ExactAssetImage("images/earthcam/4.jpg"),
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          dotColor: Colors.white,
                          indicatorBgPadding: 5.0,
                          dotBgColor: Colors.transparent,
                          borderRadius: true,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      PortfolioDetails(
                        titleText: 'Earth Cam',
                        detailsText: 'Live Video Streaming App',
                        madeWithText: 'Android and Web app with Flutter',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: height,
                          width: width,
                          child: Carousel(
                            boxFit: BoxFit.scaleDown,
                            images: [
                              ExactAssetImage("images/qjobs/1.png"),
                              ExactAssetImage("images/qjobs/2.png"),
                              ExactAssetImage("images/qjobs/3.png"),
                              ExactAssetImage("images/qjobs/4.png"),
                            ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.white,
                            indicatorBgPadding: 5.0,
                            dotBgColor: Colors.transparent,
                            borderRadius: true,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      PortfolioDetails(
                        titleText: 'QJobs',
                        detailsText: 'Job Portal UI',
                        madeWithText: 'Android app with Flutter',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: height,
                          width: width,
                          child: Carousel(
                            boxFit: BoxFit.scaleDown,
                            images: [
                              ExactAssetImage("images/flutterux/1.png"),
                              ExactAssetImage("images/flutterux/2.png"),
                              ExactAssetImage("images/flutterux/3.png"),
                              ExactAssetImage("images/flutterux/4.png"),
                            ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.white,
                            indicatorBgPadding: 5.0,
                            dotBgColor: Colors.transparent,
                            borderRadius: true,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      PortfolioDetails(
                        titleText: 'FlutterUX',
                        detailsText: 'Flutter Layouts',
                        madeWithText: 'Android app with Flutter',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
