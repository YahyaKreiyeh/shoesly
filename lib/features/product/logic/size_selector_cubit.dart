import 'package:flutter_bloc/flutter_bloc.dart';

class SizeSelectorCubit extends Cubit<String> {
  SizeSelectorCubit() : super('41');

  void selectSize(String size) => emit(size);
}
