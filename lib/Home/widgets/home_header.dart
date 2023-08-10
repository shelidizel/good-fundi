import 'package:flutter/material.dart';

import '../../Utils/good_fundi_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.topCenter,
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal : 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
            
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(.2)
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Padding(
                      padding: const EdgeInsets.symmetric( horizontal : 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.75 - 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search for a service',
                                hintStyle: GoodFundiTextStyles
                                .searchText
                                .copyWith(
                                  color: Colors.white
                                  ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(right : 12.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,),
                            )
                        ],
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right : 8.0),
                    child: Icon(
                      Icons.forum_outlined,
                      color: Colors.white.withOpacity(.8),
                      size: 36,
                        ),
                  )
                ],
              ),
            ),
            );
  }
}