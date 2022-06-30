part of 'predictions_bloc.dart';

abstract class PredictionsState extends Equatable {
  const PredictionsState();

  @override
  List<Object> get props => [];
}

class PredictionsInitial extends PredictionsState {}

class PredictionsLoading extends PredictionsState {}

class PredictionsLoaded extends PredictionsState {
  final List<PredictionModel> predictions;

  const PredictionsLoaded({required this.predictions});
  @override
  List<Object> get props => [predictions];
}

class PredictionsError extends PredictionsState {
  final String? message;
  const PredictionsError(this.message);
}
