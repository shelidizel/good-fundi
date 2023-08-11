import 'package:flutter/material.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';
import 'package:good_fundi/model/fundi_service.dart';

class CustomServices extends StatelessWidget {
  CustomServices({super.key});

  List<FundiServiceModel> customServices = [
    FundiServiceModel(
      image: 'assets/sink.jpeg', 
      serviceName: 'floating sink'),
    FundiServiceModel(
      image: 'assets/wardrobe.jpeg', 
      serviceName: 'Wardrobe fitout'),
    FundiServiceModel(
      image: 'assets/float.jpeg', 
      serviceName: 'Floating shelves'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Custom services',
                style: GoodFundiTextStyles.subTitle,
                ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              )
            ],
          ),
      ),
        SizedBox(
          height: 128,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: customServices.length,
            itemBuilder: (context, index){
              return customServiceItem(
                customServices[index].image, 
                customServices[index].serviceName);
            }
          ),
        ),
      ],
    );
  }
}

Widget customServiceItem(String image, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal : 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image,
                ),
              )
          ),
  
        ),
        const SizedBox(height: 4,),
        Text(
          name,
          style: GoodFundiTextStyles
          .subTitle
          .copyWith(
            fontSize: 13
          ),
        )
      ],
    ),
  );
}