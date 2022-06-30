part of 'connection_bloc.dart';

abstract class ConnectionCheckerState extends Equatable {
  const ConnectionCheckerState();

  @override
  List<Object> get props => [];
}

class ConnectionInitial extends ConnectionCheckerState {}

class ConnectionSuccess extends ConnectionCheckerState {}

class ConnectionFailure extends ConnectionCheckerState {}
