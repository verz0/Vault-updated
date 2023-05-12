import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';

class dataPage extends StatefulWidget {
  const dataPage({Key? key}) : super(key: key);

  @override
  _dataPageState createState() => _dataPageState();
}

class _dataPageState extends State<dataPage> {
  String? _data;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
    final user = auth.currentUser;
    final uid = user?.uid;
    print(uid);
    final DocumentReference<Map<String, dynamic>> result =
        firestoreInstance.collection('Userdata').doc(uid);
    final DocumentSnapshot<Map<String, dynamic>> docSnapshot =
        await result.get();
    if (docSnapshot.exists) {
      final Map<String, dynamic> data = docSnapshot.data()!;
      setState(() {
        _data = json.encode(data);
      });
    } else {
      setState(() {
        _data = 'No data found for Username: ';
      });
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your data'),
          backgroundColor: Color.fromARGB(255, 255, 184, 0),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              if (_data != null)
                Column(
                  children: [
                    if (json.decode(_data!) is Map<String, dynamic>)
                      SizedBox(
                        height: 20,
                      ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name: ${(json.decode(_data!) as Map<String, dynamic>)['name']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Date of Birth: ${(json.decode(_data!) as Map<String, dynamic>)['Date_of_birth']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sex: ${(json.decode(_data!) as Map<String, dynamic>)['sex']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone: ${(json.decode(_data!) as Map<String, dynamic>)['phone']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email: ${(json.decode(_data!) as Map<String, dynamic>)['email']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // ---------------------------------------------
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Address: ${(json.decode(_data!) as Map<String, dynamic>)['House_no']},   ${(json.decode(_data!) as Map<String, dynamic>)['Street_cur']},   ${(json.decode(_data!) as Map<String, dynamic>)['locality_cur']},  ${(json.decode(_data!) as Map<String, dynamic>)['town_cur']},  ${(json.decode(_data!) as Map<String, dynamic>)['district_cur']},  ${(json.decode(_data!) as Map<String, dynamic>)['State_cur']},  ${(json.decode(_data!) as Map<String, dynamic>)['Country_bu']}  ${(json.decode(_data!) as Map<String, dynamic>)['Pin_cur']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // -------------------------------------------------

                    // -----------------------------------------------------------
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Aadhaar: ${(json.decode(_data!) as Map<String, dynamic>)['aadhaar_number']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Pan: ${(json.decode(_data!) as Map<String, dynamic>)['pan_number']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Voter ID: ${(json.decode(_data!) as Map<String, dynamic>)['voter']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Driving ID: ${(json.decode(_data!) as Map<String, dynamic>)['driving']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Digilocker ID: ${(json.decode(_data!) as Map<String, dynamic>)['digilocker']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Passport ID: ${(json.decode(_data!) as Map<String, dynamic>)['passport']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // ------------------------------------------------
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Blood type: ${(json.decode(_data!) as Map<String, dynamic>)['blood']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Height: ${(json.decode(_data!) as Map<String, dynamic>)['blood']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Weight: ${(json.decode(_data!) as Map<String, dynamic>)['Weight']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Medical Conditions: ${(json.decode(_data!) as Map<String, dynamic>)['medical_condition']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'BMI: ${(json.decode(_data!) as Map<String, dynamic>)['bmi']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Allergies: ${(json.decode(_data!) as Map<String, dynamic>)['allergies']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bank Name: ${(json.decode(_data!) as Map<String, dynamic>)['bank_name']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Branch: ${(json.decode(_data!) as Map<String, dynamic>)['branch']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Account Number: ${(json.decode(_data!) as Map<String, dynamic>)['account_number']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ifsc: ${(json.decode(_data!) as Map<String, dynamic>)['ifsc_code']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
            ],
          )),
        ));
  }
}
