import 'package:news/models/category.dart';

class CategoryRepository {
  static List<Category> getCategories() {
    List<Category> categories = [
      new Category(
        id: '1',
        title: 'Sport',
        imagePath: 'https://elchinabraham.com/images/sport.png',
      ),
      new Category(
        id: '2',
        title: 'Weather',
        imagePath: 'https://elchinabraham.com/images/weather.png',
      ),
      new Category(
        id: '3',
        title: 'Self Improvement',
        imagePath: 'https://elchinabraham.com/images/self.png',
      ),
      new Category(
        id: '4',
        title: 'Novels',
        imagePath: 'https://elchinabraham.com/images/book.png',
      ),
      new Category(
        id: '5',
        title: 'Political',
        imagePath: 'https://elchinabraham.com/images/pol.png',
      ),
      new Category(
        id: '6',
        title: 'History',
        imagePath: 'https://elchinabraham.com/images/history.png',
      ),
      new Category(
        id: '7',
        title: 'Science',
        imagePath: 'https://elchinabraham.com/images/science.png',
      ),
      new Category(
        id: '8',
        title: 'Movie',
        imagePath: 'https://elchinabraham.com/images/movie.jpg',
      ),
    ];
    return categories;
  }
}
