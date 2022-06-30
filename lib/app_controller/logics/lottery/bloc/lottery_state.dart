part of 'lottery_bloc.dart';

abstract class LotteryState extends Equatable {
  const LotteryState();

  @override
  List<Object> get props => [];
}

class LotteryInitial extends LotteryState {}

class LotteryLoading extends LotteryState {}

class LotteryLoaded extends LotteryState {
  final LotteryModel lottery;

  const LotteryLoaded({required this.lottery});
  @override
  List<Object> get props => [lottery];
}

class LotteryError extends LotteryState {
  final String? message;
  const LotteryError(this.message);
}
