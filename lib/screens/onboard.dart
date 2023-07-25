import 'package:dotariverpod/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/onboard.png')),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.85),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Know Your Hero To Become Hero',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Discover Dota 2 Heroes with our Seamless Information Experiences.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const Gap(30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0XFFDB890E)),
                  onPressed: () {
                    Get.to(const DashboardView());
                  },
                  child: Text(
                    'Getting Started',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
