import 'package:flutter_bloc/flutter_bloc.dart';

class ColorSelectorCubit extends Cubit<String> {
  ColorSelectorCubit() : super('White');

  void selectColor(String color) => emit(color);
}
