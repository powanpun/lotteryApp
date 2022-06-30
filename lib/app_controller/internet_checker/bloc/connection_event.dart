part of 'connection_bloc.dart';

abstract class ConnectionEvent extends Equatable {
  const ConnectionEvent();

  @override
  List<Object> get props => [];
}

class ListenConnection extends ConnectionEvent {}

class ConnectionChanged extends ConnectionEvent {
  ConnectionCheckerState connection;

  ConnectionChanged(this.connection);
  @override
  List<Object> get props => [connection];
}
