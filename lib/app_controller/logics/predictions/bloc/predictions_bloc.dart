import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/data_layer/models/prediction_model.dart';
import 'package:predictandwin/data_layer/repositories/predictions/prediction_repository.dart';

part 'predictions_event.dart';
part 'predictions_state.dart';

class PredictionsBloc extends Bloc<PredictionsEvent, PredictionsState> {
  final PredictionRepository _predictionRepository;
  StreamSubscription? _streamSubscription;
  PredictionsBloc(this._predictionRepository) : super(PredictionsInitial()) {
    on<LoadPredictions>(_loadPredictions);
    on<UpdatePredictions>(_updatePredictions);
  }

  _loadPredictions(LoadPredictions event, Emitter<PredictionsState> emit) {
    try {
      emit(PredictionsLoading());

      _streamSubscription?.cancel();
      _streamSubscription = _predictionRepository.getAllPredictions().listen(
        (data) {
          add(UpdatePredictions(predictions: data));
        },
      );
    } on FirebaseException catch (e) {
      emit(PredictionsError(e.toString()));
    }
  }

  _updatePredictions(
      UpdatePredictions event, Emitter<PredictionsState> emit) async {
    emit(PredictionsLoaded(predictions: event.predictions));
  }
}
