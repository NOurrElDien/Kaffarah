import 'package:flutter/material.dart';
import 'package:kaffarah_na/swipeHelp.dart';
import 'package:kaffarah_na/widgets/KaffarahContainer.dart';
import 'package:kaffarah_na/widgets/FavouriteContainer.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfff4f4f4),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-home.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hi, Welcome\nto Kaffarah 🕯️ 📿', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Image.asset('assets/images/avatar.png', width: 50,),
                    //CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/images/avatar.png'),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'mmm, I would search on ... Kaffarah',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none)
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.blue, size: 30,)
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recommended', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Text('View All', style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),),
                        Icon(Icons.keyboard_arrow_right, color: Colors.orange,)
                      ],
                    )
                  ],
                ),
              ),

              Container(
                height: 320,
                child: PageView.builder(
                  itemCount: recommendedDishes.length,
                    controller: PageController(viewportFraction: 0.7),
                    onPageChanged: (int index)=>setState(()=>_index=index),
                    itemBuilder: (BuildContext context, int i){
                      return KaffarahContainer(
                        index:_index,
                        i:i
                      );
                    }
                ),
              ),
              SizedBox(height: 15,),
              Image.asset("assets/images/adver1.jpg"),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicator: MD2Indicator(
                        indicatorHeight: 5,
                        indicatorColor: Colors.blue,
                        indicatorSize: MD2IndicatorSize.tiny,
                      ),
                      tabs: [
                        Tab(
                          text: 'Kaffarat',
                        ),
                        Tab(
                          text: 'Zakat',
                        ),
                        Tab(
                          text: 'Namaa Categories',
                        ),
                      ],
                    )
                ),
              ),
              /*Container(
                height: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: favouriteDishes.length,
                    itemBuilder: (context, index){
                      return FavouriteContainer(
                        index: index
                      );
                    }
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
