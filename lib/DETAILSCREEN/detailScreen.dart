import 'package:ecommerce_practice/List.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Details',
          ),
        ),
        body:
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            detailScreen(name: productList[selectedindex]['name'],
                img: productList[selectedindex]['img'],
                price: productList[selectedindex]['price'],
                description: productList[selectedindex]['description'])
          ],
        ),
      ),
    );
  }

  Column detailScreen({required String name,required String img,required int price,required String description,}) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Container(
                  height: 300,
                  width: 410,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 0.7),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(img

                               )

                           ),
                        ),
                      ),

                    ],
                  )
                ),
              Container(
                  height: 300,
                  width: 410,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 0.7),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Column(
                    children: [

                      Text(name,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                      Text(price.toString(),style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                      Text(description,style: TextStyle(color: Colors.black,fontSize: 25,),),

                    ],
                  )
              ),


              InkWell(
                onTap: () {
                  bool status=false;
                  for(int i=0;i<cartList.length;i++)
                    {
                      if(cartList[i]['name']==productList[selectedindex]['name'])
                        {
                          index=i;
                          status=true;
                        }
                    }
                  if (status==true)
                    {
                      cartList[index]['member']++;
                    }
                  else
                    {
                      cartList.add(productList[selectedindex]);
                    }
                  for(int i=0;i<cartList.length;i++)
                    {
                      qty=(qty+cartList[i]['member']).toInt();
                      amount=(amount+cartList[i]['price']*(cartList[i]['member']));
                    }
                  total=((amount)*18/100)+amount;

                  Navigator.of(context).pushNamed('/cart');


                },
                child: Container(
                  height: 80,
                  width: 410,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 0.7),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(Icons.shopping_cart_rounded),
                      Text('ADD TO CART',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ],
                  ),
                ),
              )
            ],
          );
  }
}
