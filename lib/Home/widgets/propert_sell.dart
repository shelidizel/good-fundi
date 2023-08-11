import 'package:flutter/material.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';
import 'package:good_fundi/model/fundi_service.dart';
import 'package:good_fundi/model/propert_model.dart';

class PropertySellWidget extends StatefulWidget {
  const PropertySellWidget({super.key});

  @override
  State<PropertySellWidget> createState() => _PropertySellWidgetState();
}

class _PropertySellWidgetState extends State<PropertySellWidget> {

  List<PropertyModel> properties = [
    PropertyModel(
      image: 'assets/p1.jpg', 
      name: '4-Bed Bungalow in Karen', 
      price: '16, 800, 800 Kes'),
    PropertyModel(
      image: 'assets/p2.jpg', 
      name: 'Country House in Kitusuri', 
      price: '5, 000, 000 Kes'),
    PropertyModel(
      image: 'assets/p3.jpg', 
      name: '3-Bed Bungalow in Kitengela', 
      price: '10, 600, 000 Kes'),
    PropertyModel(
      image: 'assets/p4.jpg', 
      name: '5-Bed Bungalow in Rongai', 
      price: '8, 900, 000 Kes'),

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
                  'Property Listings',
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
          height: 264,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: properties.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: propertySellItem(
                  properties[index].image,
                  properties[index].name,
                  properties[index].price,
                  ),
              );
            }),
        ),
      ],
    );
  }
}

Widget propertySellItem(
  String image, 
  String name, 
  String price) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 300,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image))
          ),
          
        ),
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal : 12.0,
              vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name, 
                      style: GoodFundiTextStyles.subTitle,
                    ),
                    Text(
                      price, 
                      style: GoodFundiTextStyles
                      .subTitle
                      .copyWith(
                        color: Colors.grey.shade600
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.verified,
                  color: Colors.deepOrange,
                  size: 20.0,
                )
              ],
            ),
          ),
        )

      ],
    );

}