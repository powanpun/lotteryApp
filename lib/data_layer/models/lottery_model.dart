import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class LotteryModel extends Equatable {
  final String image;

  const LotteryModel({
    required this.image,
  });

  @override
  List<Object?> get props => [image];

  static LotteryModel fromSnapshot(DocumentSnapshot snap) {
    LotteryModel hostelModel = LotteryModel(
      image: snap['image'],
    );
    return hostelModel;
  }
}
