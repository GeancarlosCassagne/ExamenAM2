import 'package:nataliamacias/model/carros_model.dart';
import 'package:nataliamacias/model/data.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

final _carros = [
    Carro(
      id: 1,
      brand: 'KIA',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
),
    Carro(
      id: 2,
      brand: 'Chevrolet',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
),
    Carro(
      id: 3,
      brand: 'Susuki',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
),
    Carro(
      id: 4,
      brand: 'Yamaha',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
),
  Carro(
      id: 5,
      brand: 'Ford',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
),  Carro(
      id: 6,
      brand: 'Toyota',
      model: 'RIO R',
      manufacturingDate: DateTime(2020, 10, 03, 19, 43),
      description:'None',
)
  ];

 ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Carro> getCarros() {
    return _carros;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _carros.indexWhere((carro) => carro.id == id);
    _carros[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteCarros(int id) {
    _carros.removeWhere((carro) => carro.id == id);
  }
}


