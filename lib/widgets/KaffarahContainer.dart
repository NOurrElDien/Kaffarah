import 'package:flutter/material.dart';
import 'package:kaffarah_na/swipeHelp.dart';

class KaffarahContainer extends StatelessWidget {
  final int index;
  final int i;

  const KaffarahContainer({Key key, this.index, this.i}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Transform.scale(
            scale: i == index ? 1 : .8,
            child: Container(
              height: 150,
              width: 270,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: i == index ? Colors.orange : Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(recommendedDishes[i].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: i == index ? Colors.white : Colors.black),),
                      SizedBox(height: 10,),
                      Text('>> ' + recommendedDishes[i].category.toString() + ' <<', style: TextStyle(fontSize: 15,color: i == index ? Colors.white : Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5,0,5,0),
                        child: CircleAvatar(backgroundColor: Colors.white,
                          child: Icon(Icons.favorite_border, color: Colors.red,),
                        ),
                      ),
                      CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.add_shopping_cart_outlined, color: Colors.lightGreen,),
                      ),
                      //Icon(Icons.add_shopping_cart_outlined, color: Colors.lightGreen,)
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: -15,
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.transparent,
            child: Transform.scale(
                scale: i == index ? 1 : .9,
                child: Image.asset(recommendedDishes[i].image)),
          ),
        )
      ],
    );
  }
}
