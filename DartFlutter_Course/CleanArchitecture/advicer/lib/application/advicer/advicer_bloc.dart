import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    //Simulate network 
    Future sleep1(){
      return Future.delayed(const Duration(seconds: 2), () => "1");
    }

    /*
    The bloc handles the state according to the event which it gets as an input.
    So, if we would have another event, we would write another on-method for the 
    other event, e.g. on<ExampleEvent>... .
    */
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      //do sth
      await sleep1();
      //get advice
      emit(AdvicerStateLoaded(advice: "A free way is a free way - John Ruddy"));
    });
  }
}
