import 'package:advicer/domain/entities/advice_Entity.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../domain/failures/failures.dart';
import '../../domain/usecases/advicer_usecases.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';
const GENERAL_FAILURE_MESSAGE = "Ups, something gone wrong. Please try again!";
const SERVER_FAILURE_MESSAGE = "Ups, API Error. please try again!";

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  final AdvicerUsecases usecases;

  AdvicerBloc({required this.usecases}) : super(AdvicerInitial()) {
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
        return SERVER_FAILURE_MESSAGE;
      case GeneralFailure:
        return GENERAL_FAILURE_MESSAGE;

      default:
        return GENERAL_FAILURE_MESSAGE;
    }
  }
}