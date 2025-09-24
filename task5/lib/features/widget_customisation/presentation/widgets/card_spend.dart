import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:task5/core/utils/size_config.dart';

class CardSpend extends StatelessWidget {
  const CardSpend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth * 0.02),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.screenWidth * 0.04,
          right: SizeConfig.screenWidth * 0.04,
          bottom: SizeConfig.screenWidth * 0.04,
          top: SizeConfig.screenWidth * 0.08,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 0.8),
                borderRadius: BorderRadius.circular(
                  SizeConfig.screenWidth * 0.02,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/spend.png",
                    width: SizeConfig.screenWidth * 0.22,
                  ),
                  Text(
                    "Nothing to track here yet.",
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.03,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.screenWidth * 0.03),
                    child: SizedBox(
                      width: double.infinity,
                      height: SizeConfig.screenWidth * 0.074,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.grey.shade200,

                          foregroundColor: Colors.grey.shade400,
                        ),

                        onPressed: () {},
                        child: Row(
                          spacing: SizeConfig.screenWidth * 0.03,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View all spends",
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.03,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            HugeIcon(
                              icon: HugeIcons.strokeRoundedArrowUpRight03,
                              size: SizeConfig.screenWidth * 0.04,
                              strokeWidth: SizeConfig.screenWidth * 0.006,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -18,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    SizeConfig.screenWidth * 0.05,
                  ),
                  border: Border.all(color: Colors.grey.shade300),
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenWidth * 0.014,
                    horizontal: SizeConfig.screenWidth * 0.04,
                  ),
                  child: Text(
                    "Your recent Spends",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: SizeConfig.screenWidth * 0.028,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
