import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('About Us'),
        actions: <Widget>[
           IconButton(
             icon:Icon(Icons.person),
              onPressed: () {}),
        ],
      ),

      //body:Padding(
       // padding: EdgeInsets.all(20.0),
     body: SingleChildScrollView(
       padding: EdgeInsets.symmetric(horizontal:10),
       child:Column(
        children: <Widget>[
          Card(
            color:Colors.grey,
        elevation:0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child:Container(
          padding:EdgeInsets.symmetric(horizontal: 10,vertical:10),
          child: Text('nbvvhuv vurvbbb njvuyjrnfnnng uhrgnmvmhhjhb vnbvnv n mjfeueomh'
              'ncuchurvjvmknv nvuibv dmijf jnjg drrfk migiging'
              'mkmrkgn njrej  rekjnje jenijt jringtijg tngti'
              'ngjjwj w jg jgng wjngtjtj jtgnjtnnuythjl'
              'njhjnj mbhyjn jnjgj,nmjk bhhvgyg jnjj jbhbhv jbjnjh bhvgv hbh'
              'njnjbjb hbhgffg bhh mnjnj vgvb jbhbh bhvg n nbhb hghvh',
            style: TextStyle(color: Colors.white, fontSize: 25.0),),
        ),
          ),
          Card(
            color:Colors.grey,
            elevation:0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child:Container(
              padding:EdgeInsets.all(10),
              child: Text('nbvvhuv vurvbbb njvuyjrnfnnng uhrgnmvmhhjhb vnbvnv n mjfeueomh'
                  'ncuchurvjvmknv nvuibv dmijf jnjg drrfk migiging'
                  'mkmrkgn njrej  rekjnje jenijt jringtijg tngti'
                  'ngjjwj w jg jgng wjngtjtj jtgnjtnnuythjl'
                  'njhjnj mbhyjn jnjgj,nmjk bhhvgyg jnjj jbhbhv jbjnjh bhvgv hbh'
                  'njnjbjb hbhgffg bhh mnjnj vgvb jbhbh bhvg n nbhb hghvh',
                style: TextStyle(color: Colors.white, fontSize: 25.0),),
            ),
          ),
         ]
      ),)



    );
  }
}

