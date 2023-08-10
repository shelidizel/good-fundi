import 'package:flutter/material.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';

class SellPropertBanner extends StatelessWidget {
  const SellPropertBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal : 6.0),
        child: Stack(
          children: [
            
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 5 - 20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange, Color.fromARGB(255, 251, 67, 11)]
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Sell your propert on our app.',
                          style: GoodFundiTextStyles
                          .subTitle
                          .copyWith(
                            color: Colors.white
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Go through the seller\'s guide\nto list your property',
                          style: GoodFundiTextStyles
                          .bodyText
                          .copyWith(
                            color: Colors.white
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 67, 9, 226),
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal : 24.0,
                                vertical: 8,),
                              child: Text(
                                'Create Listing',
                                style: GoodFundiTextStyles
                                .buttonText
                                .copyWith(
                                  color: Colors.white
                                ),
                              ),
                            ),
                      
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width/3 + 120,
              height: MediaQuery.of(context).size.height/5 + 120,
              right: -20,
              bottom: -80,
              child: Image.asset(
                'assets/house_png.png')),
          ],
        ),
      ));
  }
}