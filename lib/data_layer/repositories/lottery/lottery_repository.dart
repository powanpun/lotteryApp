import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:predictandwin/data_layer/models/lottery_model.dart';

class LotteryRepository {
  final FirebaseFirestore _firebaseFirestore;

  LotteryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  Stream<LotteryModel> getLottryData() {
    return _firebaseFirestore.collection("lottery").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => LotteryModel.fromSnapshot(doc)).first;
    });
  }
}
