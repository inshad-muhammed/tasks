import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task5/core/utils/size_config.dart';
import 'package:task5/features/widget_customisation/presentation/controllers/show_state_providers.dart';
import 'package:task5/features/widget_customisation/presentation/widgets/active_billers.dart';
import 'package:task5/features/widget_customisation/presentation/widgets/card_spend.dart';
import 'package:task5/features/widget_customisation/presentation/widgets/credit_card_bills.dart';
import 'package:task5/features/widget_customisation/presentation/widgets/widget_type.dart';

class CustomiseWidgetPage extends ConsumerWidget {
  const CustomiseWidgetPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeBillState = ref.watch(activeBillProvider);
    final cardSpendState = ref.watch(cardSpendProvider);
    final creditCardBillState = ref.watch(creditCardProvider);
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Icon(Icons.arrow_back, size: SizeConfig.screenWidth * 0.06),
        leadingWidth: SizeConfig.screenWidth * 0.15,
        titleSpacing: 0,
        title: Text(
          "Customise Widgets",
          style: TextStyle(
            color: const Color.fromARGB(255, 59, 93, 121),
            fontSize: SizeConfig.screenWidth * 0.05,
            fontWeight: FontWeight.w900,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color.fromARGB(255, 184, 220, 236), Colors.white],
            ),
          ),
        ),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.screenWidth * 0.07),
            topRight: Radius.circular(SizeConfig.screenWidth * 0.07),
          ),
          border: Border(top: BorderSide(color: Colors.lightBlue.shade50)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.06,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenWidth * 0.08),
                Text(
                  "Pinned",
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.044,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.04),
                WidgetType(
                  activeBillProvider,
                  cardType: "Your Active Billers",
                  function: () {
                    ref.read(activeBillProvider.notifier).state =
                        !activeBillState;
                  },
                ),
                activeBillState
                    ? Column(
                        children: [
                          SizedBox(height: SizeConfig.screenWidth * 0.01),
                          BillerCard(),
                        ],
                      )
                    : SizedBox(height: SizeConfig.screenWidth * 0.02),
                SizedBox(height: SizeConfig.screenWidth * 0.042),
                WidgetType(
                  cardSpendProvider,
                  cardType: "Card Spends",
                  function: () {
                    ref.read(cardSpendProvider.notifier).state =
                        !cardSpendState;
                  },
                ),
                cardSpendState
                    ? Column(
                        children: [
                          SizedBox(height: SizeConfig.screenWidth * 0.01),
                          CardSpend(),
                        ],
                      )
                    : SizedBox(height: SizeConfig.screenWidth * 0.02),
                SizedBox(height: SizeConfig.screenWidth * 0.042),
                WidgetType(
                  creditCardProvider,
                  cardType: "Credit Card Bills",
                  function: () {
                    ref.read(creditCardProvider.notifier).state =
                        !creditCardBillState;
                  },
                ),
                creditCardBillState
                    ? Column(
                        children: [
                          SizedBox(height: SizeConfig.screenWidth * 0.01),
                          CreditCardBills(),
                        ],
                      )
                    : SizedBox(height: SizeConfig.screenWidth * 0.02),
                SizedBox(height: SizeConfig.screenWidth * 0.042),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
