import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/data_layer/models/lottery_model.dart';
import 'package:predictandwin/data_layer/repositories/lottery/lottery_repository.dart';

part 'lottery_event.dart';
part 'lottery_state.dart';

class LotteryBloc extends Bloc<LotteryEvent, LotteryState> {
  final LotteryRepository _lotteryRepository;
  StreamSubscription? _streamSubscription;
  LotteryBloc(this._lotteryRepository) : super(LotteryInitial()) {
    on<LoadLottery>(_loadLottery);
    on<UpdateLottery>(_updateLottery);
  }

  _loadLottery(LoadLottery event, Emitter<LotteryState> emit) {
    try {
      emit(LotteryLoading());

      _streamSubscription?.cancel();
      _streamSubscription = _lotteryRepository.getLottryData().listen(
        (data) {
          add(UpdateLottery(lottery: data));
        },
      );
    } on FirebaseException catch (e) {
      emit(LotteryError(e.toString()));
    }
  }

  _updateLottery(UpdateLottery event, Emitter<LotteryState> emit) async {
    emit(LotteryLoaded(lottery: event.lottery));
  }
}
