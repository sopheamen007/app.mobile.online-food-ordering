import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui_ordering/constant/data_json.dart';
import 'package:food_ui_ordering/pages/product_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/images/burger_icon.svg"), onPressed: (){

        }),
        actions: <Widget>[

          IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: (){

          }),
           IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: (){

          }),
          
        ],
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    List menus = [
      "Salads",
      "Soups",
      "Grilled",
     
    ];
    
    return ListView(
      padding: EdgeInsets.only(top: 40,left: 15,right: 15,bottom: 20),
      children: <Widget>[
        Text("Delicious Salads",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        Text("We made fresh and healthy food",style: TextStyle(
          fontSize: 14,
   
        ),),
        SizedBox(height: 20,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
              child: Row(
             
              children: List.generate(menus.length, (index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      activeMenu = index;
                    });
                  },
                    child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
              
              decoration: BoxDecoration(
                    color: activeMenu == index ? Colors.black : Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text(menus[index],style: TextStyle(
                        color: activeMenu == index ? Colors.white : Colors.black
                      ),),
                    ),
              ),
            ),
                  ),
                );
              }),
            ),
      ),
        SizedBox(height: 30,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(
              images: food_data_section_one[0]['img_mul'],
              name: food_data_section_one[0]['name'],
              price: food_data_section_one[0]['price'],
              description: food_data_section_one[0]['description'],
            )));
          },
                  child: Container(
            width: 160,
            height: 160,
             
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 15,
                  left: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width-30,
                    height: 120,
                   decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: (MediaQuery.of(context).size.width-30)* 0.46,
                        ),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(food_data_section_one[0]['name'],style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                Text(food_data_section_one[0]['description']),
                               
                               Icon(Icons.add_circle)
                              ],),
                              SizedBox(height: 8,),
                                Text(food_data_section_one[0]['price'],style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ))
                      ],
                    )
                  ),
                ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 15
                      )],
                      shape: BoxShape.circle,
                      image: DecorationImage(image: 
                      AssetImage(food_data_section_one[0]['img']),fit: BoxFit.cover)
                    ),
                  )
              ],
            ),
          ),
        ),
        SizedBox(height: 30,),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(food_data_section_two.length, (index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(
              images: food_data_section_two[index]['img_mul'],
              name: food_data_section_two[index]['name'],
              price: food_data_section_two[index]['price'],
              description: food_data_section_two[index]['description'],
            )));
                },
                              child: Container(
                  decoration: BoxDecoration(
                  ),
            width: (MediaQuery.of(context).size.width-110)/2,
            height: 250,
            child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 3,
                      top: 3,
                      child: Container(
                        width: 125,
                        height: 235,
                        decoration: BoxDecoration(
                           color: Colors.grey.withOpacity(0.2),
                       
                            borderRadius: BorderRadius.circular(60),
                            
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                Text(food_data_section_two[index]['name'],style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 6,),
                     Text(food_data_section_two[index]['description'],style: TextStyle(
                        fontSize: 12,
                       
                      ),),
                      SizedBox(height: 6,),
                        Text(food_data_section_two[index]['price'],style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        // color: Colors.redAccent,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: 
                        AssetImage(food_data_section_two[index]['img']),fit: BoxFit.cover),
                         boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10
                        )],
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 220,
                      child: Icon(Icons.add_circle,size: 28,))
                  ],
            ),
          ),
              );
            }),
          ),
        )
   
       
      ],
    );
  }
}