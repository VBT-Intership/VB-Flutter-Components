import 'package:flutter/material.dart';
import 'package:intershipwidgets/components/card/normal_card.dart';
import 'package:intershipwidgets/view/http_cat_view/model/http_cat_model.dart';
import './http_cat_view_view_model.dart';

class HttpCatViewView extends HttpCatViewViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getHttpCatList();
        },
      ),
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: httpCats.length,
        itemBuilder: (context, index) {
          print(index);
          return buildCardHttpCat(httpCats[index]);
        },
      ),
    );
  }

  Widget buildCardHttpCat(CatModel model) {
    return Container(
      padding: EdgeInsets.all(pageWidth * 0.02),
      height: pageHeight * 0.3,
      child: buildColumnAdvance(model),
    );
  }

  Padding buildPaddingNormal() {
    return Padding(
      padding: EdgeInsets.only(
          left: pageWidth * 0.02, right: pageWidth * 0.05, bottom: pageHeight * 0.03, top: pageHeight * 0.03),
      child: Container(color: Colors.red),
    );
  }

  Widget buildColumnAdvance(CatModel model) {
    return Dismissible(
      secondaryBackground: Container(color: Colors.green),
      background: Container(color: Colors.red),
      key: UniqueKey(),
      child: NormalCard(
        child: Image.network(model.imageUrl),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: buildVisibilityLoading(),
      title: Text("HTTP CAT SAMPLE"),
    );
  }

  Visibility buildVisibilityLoading() {
    return Visibility(
      visible: isLoading,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}
