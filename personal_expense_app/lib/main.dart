import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Transaction> transactions =[
  Transaction(
    id: 't1', 
    title: 'New Shoes', 
    amount:69.99, 
    date: DateTime.now()
    ), //From transaaction class within this < > which you instiante
  Transaction(id: 't2', title: 'Weekly Groceries', amount: 16.53, date: DateTime.now())
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //Center within Colum
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(child: Container(

            width: double.infinity,
            color: Colors.red,
            child: Text('CHART')),
          elevation: 5,
          ),
          Column(children: transactions.map((tx){
              return Card(
                child:Row(
                  children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2,),), 
                    padding: EdgeInsets.all(10),
                    child: Text(
                      tx.amount.toString(),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,  
                        
                      ),
                      ),
                      ),
                      Column(  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                          tx.title, 
                      textAlign: TextAlign.left,
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),

                          ),
                        Text(
                          tx.date.toString(), 
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ),
                          ),
                      ],)
                ],),
              );
          }).toList(),)
        ],
      ),
    );
  }
}
