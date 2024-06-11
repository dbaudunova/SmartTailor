import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'place_order_event.dart';
part 'place_order_state.dart';

class PlaceOrderBloc extends Bloc<PlaceOrderEvent, PlaceOrderState> {
  PlaceOrderBloc() : super(PlaceOrderInitial()) {
    on<PlaceOrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
