part of 'predictions_bloc.dart';

abstract class PredictionsEvent extends Equatable {
  const PredictionsEvent();

  @override
  List<Object> get props => [];
}

class LoadPredictions extends PredictionsEvent {}

class UpdatePredictions extends PredictionsEvent {
  final List<PredictionModel> predictions;

  const UpdatePredictions({required this.predictions});

  @override
  List<Object> get props => [predictions];
}
