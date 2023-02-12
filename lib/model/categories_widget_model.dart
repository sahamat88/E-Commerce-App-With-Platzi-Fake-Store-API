class CategoriesWidgetModel {
  String image;
  String cat_title;

  CategoriesWidgetModel({required this.image, required this.cat_title});

  static  List<CategoriesWidgetModel> getCatModel() {
    return [
      CategoriesWidgetModel(
        image: 'assets/images/t-shirt.png',
        cat_title: 'T-Shirt',
      ),
      CategoriesWidgetModel(
        image: 'assets/images/shirt.png',
        cat_title: 'Shirt',
      ),
      CategoriesWidgetModel(
        image: 'assets/images/women-dress.png',
        cat_title: 'Dress',
      ),
      CategoriesWidgetModel(
        image: 'assets/images/shoes.png',
        cat_title: 'Shoes',
      ),
      CategoriesWidgetModel(
        image: 'assets/images/women-shoes.png',
        cat_title: 'Women Shoes',
      ),
      CategoriesWidgetModel(
        image: 'assets/images/kids.png',
        cat_title: 'Kids',
      ),
    ];
  }
}
