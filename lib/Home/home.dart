import 'package:flutter/material.dart';
import 'package:good_fundi/Home/widgets/custom_services.dart';
import 'package:good_fundi/Home/widgets/fundi_services.dart';
import 'package:good_fundi/Home/widgets/home_header.dart';
import 'package:good_fundi/Home/widgets/propert_sell.dart';
import 'package:good_fundi/Home/widgets/sell_property_banner.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeHeader(),
        SellPropertBanner(),
        FundiServicesList(),
        CustomServices(),
        PropertySellWidget()
        
      ],
    );
  }
}