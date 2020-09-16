import 'package:flutter/material.dart';
import 'package:food_ui_ordering/theme/colors.dart';
import 'package:food_ui_ordering/widgets/product_slider.dart';
import 'dart:math' as math;

import 'package:line_icons/line_icons.dart';

class ProductDetailPage extends StatefulWidget {
  final List<String> images;
  final String name;
  final String price;
  final String description;

  const ProductDetailPage({Key key, this.images, this.name, this.price, this.description}) : super(key: key);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ProductSlider(
                items: widget.images,
              ),
              SafeArea(
                              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(LineIcons.arrow_left),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
                Text(widget.description,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text(widget.name,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
                Row(
                  children: <Widget>[
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text("-",style: TextStyle(
                          color: white
                        ),),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("1",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 15,),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text("+",style: TextStyle(
                          color: white
                        ),),
                      ),
                    ),
                  ],
                )
                ],),
                SizedBox(height: 20,),
                Text("A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient. It is often dressed, and is typically served at room temperature or chilled, though some (such as south German potato salad, or chicken salad) can be served warm",style: TextStyle(
                  height: 1.3
                ),),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Text("Delivery Time"),
                    SizedBox(width: 30,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(width: 8,),
                        Text("25 Mins",style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Total Price",style: TextStyle(
                          fontSize: 15
                        ),),
                        SizedBox(height: 10),
                        Text(widget
                        .price,style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Transform.rotate(
                      angle: - math.pi /4,
                      child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          
                        ),
                    ),
                    
                        Positioned(
                          top: 20,
                          left: 18,
                                                  child: Container(
                            width: 35,
                            height: 35,
                            child: Stack(
                              children: <Widget>[
                                Icon(LineIcons.shopping_cart,color: white,size: 30,),
                                Positioned(
                                  right: 0,
                                                                child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("1",style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: white
                                      ),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 30,)
             ],
           ),
         )
        ],
      ),
    );
  }
}
