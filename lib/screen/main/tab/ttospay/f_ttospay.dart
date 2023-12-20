import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TtosPayFragment extends StatefulWidget {
  const TtosPayFragment({super.key});

  @override
  State<TtosPayFragment> createState() => _TtosPayFragmentState();
}

class _TtosPayFragmentState extends State<TtosPayFragment> {
  final flutterDocRef =
      FirebaseFirestore.instance.collection('test').doc('flutter');

  void createFbSampleData() async {
    await flutterDocRef.set({
      'value': 10,
    }).then(
      (value) => debugPrint('success create!'),
      onError: (e) => debugPrint("Error create document $e"),
    );
  }

  void readFbSampleData() async {
    await flutterDocRef.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>?;
        debugPrint(data.toString());
        if (data != null) {
          debugPrint(data['value'].toString());
        }
      },
      onError: (e) => debugPrint("Error getting document: $e"),
    );
  }

  void updateFbSampleData() async {
    await flutterDocRef.update({
      'value': 100,
    }).then(
      (value) => debugPrint('success update!'),
      onError: (e) => debugPrint("Error updating document $e"),
    );
  }

  void deleteFbSampleData() async {
    await flutterDocRef.delete().then(
          (doc) => debugPrint("Document deleted"),
          onError: (e) => debugPrint("Error updating document $e"),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            BigButton('Firebase Create', onTap: createFbSampleData)
                .pOnly(bottom: 20.0),
            BigButton('Firebase Read', onTap: readFbSampleData)
                .pOnly(bottom: 20.0),
            BigButton('Firebase Update', onTap: updateFbSampleData)
                .pOnly(bottom: 20.0),
            BigButton('Firebase Delete', onTap: deleteFbSampleData)
                .pOnly(bottom: 20.0),
          ],
        ),
      ),
    );
  }
}
