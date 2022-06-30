import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/prediction_model.dart';

class PredictionRepository {
  final FirebaseFirestore _firebaseFirestore;

  PredictionRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  Stream<List<PredictionModel>> getAllPredictions() {
    return _firebaseFirestore
        .collection("predictions")
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => PredictionModel.fromSnapshot(doc))
          .toList();
    });
  }
}
