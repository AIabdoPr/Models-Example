import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:models_example/models/model_item_model.dart';
import 'package:models_example/views/model_item_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ModelItemModel> items;

  @override
  void initState() {
    super.initState();
    items = <ModelItemModel>[
      ModelItemModel(age: 15, name: "Abdo"),
      ModelItemModel(age: 17, name: "Pr"),
      ModelItemModel(age: 18, name: "Mounir"),
      ModelItemModel(age: 19, name: "test"),
      ModelItemModel.fromMap(<String, dynamic>{"name": "same name", "age": 22}),
      ModelItemModel(age: 15, name: "Abdo"),
      ModelItemModel(age: 17, name: "Pr"),
      ModelItemModel(age: 18, name: "Mounir"),
      ModelItemModel(age: 19, name: "test"),
      ModelItemModel.fromMap(<String, dynamic>{"name": "same name", "age": 22}),
      ModelItemModel(age: 15, name: "Abdo"),
      ModelItemModel(age: 17, name: "Pr"),
      ModelItemModel(age: 18, name: "Mounir"),
      ModelItemModel(age: 19, name: "test"),
      ModelItemModel.fromMap(<String, dynamic>{"name": "same name", "age": 22}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Models Example"),
        ),
        body: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              const Text(
                "Models List View",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 80,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ModelItemView(model: items[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
