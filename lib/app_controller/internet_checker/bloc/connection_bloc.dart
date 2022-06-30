import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'connection_event.dart';
part 'connection_state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionCheckerState> {
  ConnectionBloc() : super(ConnectionInitial()) {
    on<ListenConnection>(_onConnectionListen);
    on<ConnectionChanged>(_onConnectionChanged);
  }

  void _onConnectionListen(
    ListenConnection event,
    Emitter<ConnectionCheckerState> emit,
  ) {
    StreamSubscription subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      add(ConnectionChanged(result == ConnectivityResult.none
          ? ConnectionFailure()
          : ConnectionSuccess()));
    });
  }

  void _onConnectionChanged(
    ConnectionChanged event,
    Emitter<ConnectionCheckerState> emit,
  ) {
    emit(event.connection);
  }

  @override
  Future<void> close() {
    // subscription.cancel();
    return super.close();
  }
}
