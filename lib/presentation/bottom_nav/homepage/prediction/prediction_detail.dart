import 'package:flutter/material.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';
import 'package:predictandwin/utils/screensize.dart';

class PredictionDetailPage extends StatefulWidget {
  const PredictionDetailPage({Key? key}) : super(key: key);

  @override
  State<PredictionDetailPage> createState() => _PredictionDetailPageState();
}

class _PredictionDetailPageState extends State<PredictionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              backgroundColor: AppColors.backgroundGrey,
              expandedHeight: getScreenHeight(context) / 3,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                  height: getScreenHeight(context) / 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Man City - Liv", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                centerTitle: true,
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1508098682722-e99c43a406b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
