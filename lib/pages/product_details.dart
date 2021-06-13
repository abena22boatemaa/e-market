import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_Picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_Picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:
              (context)=> new HomePage()));},
          child: Text('E-Market')),

    actions: <Widget>[
        new IconButton(icon: Icon(Icons.search, color: Colors.white,),
          onPressed: () {}),

    ],
    ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_Picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                      child:  new Text("\$${widget.product_detail_old_price}",
                     style: TextStyle(color: Colors.white70, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child:  new Text("\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

                //**** the first button
          Row(
            children: <Widget>[

              //*** the size button
              Expanded(
                  child: MaterialButton(onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                              content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close",), textColor: Colors.blue ,)
                          ]
                        );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                    elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size",style: TextStyle(fontWeight:
                  FontWeight.bold, fontSize: 15.0),),
                      ),

                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),)
              ),

              //*** the quantity button
              Expanded(
                  child: MaterialButton(onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the quantity"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                  child: new Text("close",), textColor: Colors.blue ,)
                              ]
                          );
                        });
                  },
                    color: Colors.white,
                    textColor: Colors.black,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("Qty",style: TextStyle(fontWeight:
                               FontWeight.bold, fontSize: 15.0),),
                        ),

                        Expanded(
                            child: new Icon(Icons.arrow_drop_down)
                        ),
                      ],
                    ),)
              ),
            ],
          ),

          //**** the second button
          Row(
            children: <Widget>[

              //*** the size button
              Expanded(
                  child: MaterialButton(onPressed: (){},
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now", style: TextStyle(fontWeight:
                    FontWeight.bold, fontSize: 16.0),)
                  ),
              ),

              new IconButton(icon: Icon (Icons.add_shopping_cart,color: Colors.red),
                  onPressed: (){}),
              new IconButton(icon: Icon (Icons.favorite_border),color: Colors.red,
                  onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details",style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold, fontSize: 20.0),),
            subtitle: new Text("This product contains the essential nutrients,"
                "minerals and fiber that helps to protect you and "
                "keep your immune system strong thus living a healthy life.",
              style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold, fontSize: 15.0),),
          ),
          Divider(),
          new Row(
        children:<Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: new Text("product name", style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold, fontSize: 18.0),),),
          Padding(padding:EdgeInsets.all(5.0) ,
          child: new Text(widget.product_detail_name),)
        ]
    ),

          new Row(
              children:<Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("product brand", style: TextStyle(color: Colors.grey),),),
                //remember to create brand
                Padding(padding:EdgeInsets.all(5.0) ,
                  child: new Text("brand x"),)
              ]
          ),

          new Row(
              children:<Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("product condition", style: TextStyle(color: Colors.grey),),),
                Padding(padding:EdgeInsets.all(5.0) ,
                  child: new Text("new x"),)
              ]
          ),
        ],
      ),
  );
}
}
