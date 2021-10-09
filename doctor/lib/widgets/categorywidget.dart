import 'package:doctor/models/categories/categoryModel.dart';
import 'package:doctor/models/mainmodel.dart';
import 'package:doctor/screens/searchResult.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class CategoryWidget extends StatefulWidget {

  final CategoryModel categoryModel;

  CategoryWidget(this.categoryModel);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (context, chid, MainModel model) {
        return InkWell(
        onTap: () {
          model.getChoosedCategory(widget.categoryModel.id);
          Navigator.push(context, MaterialPageRoute(builder: (_) {return SearchResult();}));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              CircleAvatar(
                minRadius: 35.0,
                maxRadius: 35.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(widget.categoryModel.image),
              ),
              Text(
                '${widget.categoryModel.title}',
                style: primaryTextStyle,
              )
            ],
          ),
        ),
      );
      },
    );
  }
}