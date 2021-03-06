import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300.0,
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                 color: Color(0xFF000662),
                  borderRadius: BorderRadius.only(
                    bottomRight:Radius.circular(100.0),
                    bottomLeft: Radius.circular(100.0),
                  )
                ),
              ),
              Positioned(
                top: 90.0,
                left: (MediaQuery.of(context).size.width / 2) - 100,
                   // tag: widget.user,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: CircleAvatar(

                      //  backgroundImage: AssetImage('images/logo.png'),
                        backgroundColor: Colors.black26,),
                    ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  onPressed: (){
                    Navigator.of(context).pop();
                  }
                ),
              ),
             Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.black,
                    onPressed: (){

                   // Navigator.of(context).push(draw());
                    }
                ),
              ),
            ],

          ),
          SizedBox(height: 10.0),
          Text('اسم المستخدم',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 30.0,),

          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on),
                      SizedBox(width: 10.0,),
                      Text('المدينة',
                          style: TextStyle(
                        fontSize: 20.0,)
                      ),
                      SizedBox(width: 50.0,),
                      Icon(Icons.build),
                      SizedBox(width: 10.0,),
                      Text('المهنة' ,
                          style: TextStyle(
                        fontSize: 20.0,)
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Text('التقييمات',
                    style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.star,)
                      ),
                      SizedBox(width: 2.0,),
                      IconButton(
                        icon: Icon(Icons.star),
                      ),   SizedBox(width: 2.0,),
                      IconButton(
                        icon: Icon(Icons.star),
                      ),   SizedBox(width: 2.0,),
                      IconButton(
                        icon: Icon(Icons.star),
                      ),   SizedBox(width: 2.0,),
                      IconButton(
                        icon: Icon(Icons.star),
                      ),


                    ],
                  ),
                  SizedBox(height: 30.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                     Text('أعمالي',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //  SizedBox(width: 20.0,),
                         /* IconButton(
                              icon: Icon(Icons.add_circle),
                              onPressed: null)*/

                    ],

                  ),
                  SizedBox(height: 30.0),

                  Container(

                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      Container(
                      //  color: Colors.red,
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                         // color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/logo1.png')
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                        ),
                      ),
                        SizedBox(width: 20.0,),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/logo1.png')
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/logo1.png')
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                        ),  SizedBox(width: 20.0,),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/logo1.png')
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                        ),  SizedBox(width: 20.0,),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/logo1.png')
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0))
                          ),
                        )

                      ],
                    ),
                  )



                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
          color: Color(0xFF000662),
        ),
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             IconButton(
               icon: Icon(Icons.add_circle,
               size: 40.0,),
               onPressed: null,
             ),
              IconButton(
                icon: Icon(Icons.notifications,size: 40.0,),
              ),
              IconButton(
                icon: Icon(Icons.person,size: 40.0,),
              ),
              IconButton(
                icon: Icon(Icons.home,size: 40.0,
                color: Colors.white,),
                onPressed: (){
                  Navigator.of(context).pushNamed('/homepage');
                },
              ),

            ],
          ),
        ),
      ),

    );
  }

 /* Widget _buildListItem(String img){
    return Container(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow:[  BoxShadow(
          blurRadius: 6.0,
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5.0,)]
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 175.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color(0xFFACBEA3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)
              )
            )
            ),

          Container(
            height: 175.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo1.png'),
                fit: BoxFit.contain),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)
                )
            ),
          ),
          Positioned(
            top: 160.0,
            right: 20.0,
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                height: 30.0,
                width: 30.0,
                child: Center(
                  child: Icon(Icons.favorite, color: Colors.red,size: 17.0,),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
                ),
              ),
            ),
          )
          ]
      )
    );
  }*/

 }

