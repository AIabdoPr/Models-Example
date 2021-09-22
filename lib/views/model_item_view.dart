import 'package:flutter/material.dart';
import 'package:models_example/models/model_item_model.dart';

class ModelItemView extends StatefulWidget {
  final ModelItemModel model;

  ModelItemView({required this.model});

  @override
  _ModelItemViewState createState() => _ModelItemViewState();
}

class _ModelItemViewState extends State<ModelItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Name: " + widget.model.name,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "Age: " + widget.model.age.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          PopupMenuButton(
            itemBuilder: (context) {
              return [];
            },
          )
        ],
      ),
    );
  }
}
