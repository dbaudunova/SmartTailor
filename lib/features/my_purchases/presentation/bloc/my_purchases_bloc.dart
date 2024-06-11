import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_purchases_event.dart';
part 'my_purchases_state.dart';

class MyPurchasesBloc extends Bloc<MyPurchasesEvent, MyPurchasesState> {
  MyPurchasesBloc() : super(MyPurchasesInitial()) {
    on<MyPurchasesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
