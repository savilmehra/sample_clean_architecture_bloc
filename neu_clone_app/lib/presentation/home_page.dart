
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neu_clone_app/presentation/widget_handler.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: getBody(context),
    ));
  }

  Widget getAppBarWidget(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      color: const Color(0xFF1e1e1e),
      child: Column(
        children: [
          Material(
            color: const Color(0xFF1e1e1e),
            shadowColor: Colors.blue,
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, icon: Icon(Icons.arrow_back)),
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/tech-mahindra-tweaks-brand-logo-to-convey-solidarity-in-fight-against-covid-19-removebg-preview.png?alt=media&token=75e81114-bad1-4730-9cc6-f7c18c364070',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Shopping App',
                        style: GoogleFonts.novaOval(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget getBody(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [getAppBarWidget(context), getMainContent(context)],
    );
  }

  Widget getMainContent(context) {
    return const WidgetHandler();
  }

  Widget getSearchPill(context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
                msg: "Search Not implemented",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 16.0);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.search,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          children: const [
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.location_on_rounded,
              size: 18,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '563125',
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
