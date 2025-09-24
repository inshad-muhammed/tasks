import 'package:flutter/material.dart';
import 'package:task5/core/utils/size_config.dart';

class BillerCard extends StatelessWidget {
  const BillerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenWidth * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.02),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth * 0.04),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 0.8),
            borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.02),
          ),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "No Billers added!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.038,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.384,
                      child: Text(
                        "Add to manage billers right from your dashboard.",
                        style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.028,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.12),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset("assets/creative.png"),
                    Positioned(
                      bottom: -20,
                      right: -30,
                      child: Image.asset("assets/image 2923.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
