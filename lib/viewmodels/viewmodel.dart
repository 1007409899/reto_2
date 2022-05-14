import 'package:reto_2/services/viewstate.dart';
import 'package:reto_2/viewmodels/basemodel.dart';

class ViewModelCar extends BaseModel {
  int? id;
  int year = 0;
  String brand = "";
  String line = "";
  double sellingPrice = 0;
  String description = "";
  double qualification = 0;
  String image = "";
  bool isSelected = false;

  ViewModelCar(this.id, this.brand, this.line, this.year, this.sellingPrice,
      this.description, this.qualification, this.image, this.isSelected) {
    setState(ViewState.init);
  }

  int get getYear => year;
  int? get getId => id;
  String get getBrand => brand;
  String get getLine => line;
  double get getSellingPrice => sellingPrice;
  String get getDescription => description;
  double get getQualification => qualification;
  String get getImage => image;
  bool get getIsSelected => isSelected;

  setYear(int value) {
    year = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setId(int value) {
    id = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setBrand(String value) {
    brand = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setLine(String value) {
    line = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setSellingPrice(double value) {
    sellingPrice = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setDescription(String value) {
    description = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setQualification(double value) {
    qualification = value;
    setState(ViewState.calculate);
    notifyListeners();
  }

  setImage(String value) {
    image = value;
    setState(ViewState.init);
    notifyListeners();
  }

  setIsSelected(bool value) {
    isSelected = value;
    setState(ViewState.init);
  }
}
