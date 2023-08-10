import 'package:flutter/material.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';
import 'package:good_fundi/model/fundi_service.dart';

class FundiServicesList extends StatefulWidget {
  const FundiServicesList({super.key});

  @override
  State<FundiServicesList> createState() => _FundiServicesListState();
}

class _FundiServicesListState extends State<FundiServicesList> {

  List<FundiServiceModel> fundiServices = [
    FundiServiceModel(image: 'assets/capentry.jpg', serviceName: 'Capentry'),
    FundiServiceModel(image: 'assets/plumbing.jpg', serviceName: 'Plumber'),
    FundiServiceModel(image: 'assets/painter.jpg', serviceName: 'Painter'),
    FundiServiceModel(image: 'assets/electrician.jpg', serviceName: 'Electrician'),
    FundiServiceModel(image: 'assets/tiling.jpg', serviceName: 'Tiling'),
    FundiServiceModel(image: 'assets/welding.jpg', serviceName: 'Welder'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Services',
                style: GoodFundiTextStyles.subTitle,
                ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fundiServices.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: fundiServiceItem(
                    fundiServices[index].serviceName, 
                    fundiServices[index].image, 
                    ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }

  Widget fundiServiceItem(String fundiService, String fundiImage) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 28,
        backgroundImage: AssetImage(
          fundiImage
        ),
      ),
      Text(
        fundiService,
        style: GoodFundiTextStyles.bodyText,
      )
    ],
  );
}
}

