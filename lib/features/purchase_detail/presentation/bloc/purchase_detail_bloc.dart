import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'purchase_detail_event.dart';
part 'purchase_detail_state.dart';

class PurchaseDetailBloc extends Bloc<PurchaseDetailEvent, PurchaseDetailState> {
  PurchaseDetailBloc() : super(PurchaseDetailInitial()) {
    on<PurchaseDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
