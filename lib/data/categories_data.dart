import 'package:jewelery_marketplace/models/category.dart';

class CategoriesData {
  List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      name: 'Jewelry',
      selected: true,
    ),
    CategoryModel(
      id: 2,
      name: 'Diamonds',
      selected: false,
    ),
    CategoryModel(
      id: 3,
      name: 'Factory',
      selected: false,
    ),
    CategoryModel(
      id: 4,
      name: 'Other',
      selected: false,
    ),
    CategoryModel(
      id: 5,
      name: 'Special',
      selected: false,
    )
  ];

  getCategories() {
    return this.categories;
  }
}
