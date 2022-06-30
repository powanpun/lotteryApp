import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class PredictionModel extends Equatable {
  final String title;
  final String image;

  const PredictionModel({
    required this.title,
    required this.image,
  });

  @override
  List<Object?> get props => [title, image];

  static PredictionModel fromSnapshot(DocumentSnapshot snap) {
    PredictionModel hostelModel = PredictionModel(
      title: snap['title'],
      image: snap['image'],
    );
    return hostelModel;
  }
}
