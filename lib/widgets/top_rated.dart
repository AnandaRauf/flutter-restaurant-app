import 'package:flutter/material.dart';
import 'package:food_mobile/core/utils/colors.dart';
import 'package:food_mobile/core/utils/size_config.dart';

class TopRated extends StatefulWidget {
  TopRated({Key key}) : super(key: key);

  @override
  _TopRatedState createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return ListView.builder(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20), top: getProportionateScreenWidth(10)),
        physics: BouncingScrollPhysics(),
        itemCount:  10,
        itemBuilder: (index, context) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getProportionateScreenWidth(100),
                  width: getProportionateScreenWidth(100),
                  margin: EdgeInsets.only(right: getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
                    color: primaryColor,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Piezss", style: theme.textTheme.bodyText1.copyWith(color: Colors.black),),
                        SizedBox(width: getProportionateScreenWidth(50),),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star_rounded, color: Colors.yellow),
                              Text("4.0 (230)", style: theme.textTheme.subtitle1.copyWith(color: blueColor))
                            ]
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
                      child: Text("Piezss", style: theme.textTheme.subtitle1.copyWith(color: Colors.grey),),
                    ),
                    Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(5), horizontal: getProportionateScreenWidth((15))),
                            margin: EdgeInsets.only(right: getProportionateScreenWidth((15))),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.grey.shade200
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.alarm_rounded, color: theme.primaryColor),
                                  Text("5 mins", style: theme.textTheme.subtitle1.copyWith(color: purpleColor))
                                ]
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(5), horizontal: getProportionateScreenWidth((15))),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.grey.shade200
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on_outlined, color: theme.primaryColor),
                                  Text("250 m", style: theme.textTheme.subtitle1.copyWith(color: purpleColor))
                                ]
                            ),
                          ),
                        ]
                    )
                  ],
                )
              ],
            ),
          );
        }
    );
  }
}