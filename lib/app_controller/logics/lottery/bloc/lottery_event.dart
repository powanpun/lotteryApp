part of 'lottery_bloc.dart';

abstract class LotteryEvent extends Equatable {
  const LotteryEvent();

  @override
  List<Object> get props => [];
}

class LoadLottery extends LotteryEvent {}

class UpdateLottery extends LotteryEvent {
  final LotteryModel lottery;

  const UpdateLottery({required this.lottery});

  @override
  List<Object> get props => [lottery];
}
