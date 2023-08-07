import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../domain/failures/failures.dart';
import '../../domain/usecases/advicer_usecases.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  final AdvicerUsecases usecases;
  AdvicerBloc({required this.usecases}) : super(AdvicerInitial()) {
    
   

    /*
    The bloc handles the state according to the event which it gets as an input.
    So, if we would have another event, we would write another on-method for the 
    other event, e.g. on<ExampleEvent>... .
    */
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());

      Either<Failure, AdviceEntity> adviceOrFailure =
          await usecases.getAdviceUsecase();

      adviceOrFailure.fold(
          (failure) =>
              emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
          (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
    });
  }

   String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "API Error try again";
      case GeneralFailure:
        return "Sth gone wrong. try again";

      default:
        return "Sth gone wrong. try again";
    }
  }
}
