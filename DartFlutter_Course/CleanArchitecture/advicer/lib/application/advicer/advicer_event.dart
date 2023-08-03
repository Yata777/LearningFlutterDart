part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerEvent {}

/// event when the "Get Advice"-button is pressed. 
class AdviceRequestedEvent extends AdvicerEvent {}