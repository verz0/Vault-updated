import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:basic_utils/basic_utils.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final nameController = TextEditingController();
  final DateController = TextEditingController();
  final sexController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final CountryController = TextEditingController();
  final stateController = TextEditingController();
  final HouseController = TextEditingController();
  final StreetController = TextEditingController();
  final locaController = TextEditingController();
  final townController = TextEditingController();
  final districtController = TextEditingController();
  final pinController = TextEditingController();
  final buildbuController = TextEditingController();
  final streetbuController = TextEditingController();
  final locabuController = TextEditingController();
  final districtbuController = TextEditingController();
  final statebuController = TextEditingController();
  final CountrybuController = TextEditingController();
  final pinbuController = TextEditingController();
  final officebuController = TextEditingController();
  final houseperController = TextEditingController();
  final streetperController = TextEditingController();
  final locaperController = TextEditingController();
  final townperController = TextEditingController();
  final districtperController = TextEditingController();
  final stateperController = TextEditingController();
  final countryperController = TextEditingController();
  final pinerController = TextEditingController();
  final aadharController = TextEditingController();
  final panController = TextEditingController();
  final voterController = TextEditingController();
  final drivingController = TextEditingController();
  final digilockerController = TextEditingController();
  final passportController = TextEditingController();
  final schoolboardController = TextEditingController();
  final rollController = TextEditingController();
  final schoolcodeController = TextEditingController();
  final schoolController = TextEditingController();
  final schooladdController = TextEditingController();
  final scoreController = TextEditingController();
  final bloodController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final conditionController = TextEditingController();
  final bmiController = TextEditingController();
  final allgController = TextEditingController();
  final banknameController = TextEditingController();
  final branchController = TextEditingController();
  final accController = TextEditingController();
  final ifscController = TextEditingController();

  final firestoreInstance = FirebaseFirestore.instance;
  String dropdownvalue = 'Blood Group';

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 184, 0),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'lib/images/Star2.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: Column(children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "Add/Edit details",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            )),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                            padding: const EdgeInsets.only(right: 240),
                            child: Text(
                              "General",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                                hintText: 'Name',
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: DateController,
                          decoration: InputDecoration(
                              hintText: 'Date of Birth',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: sexController,
                          decoration: InputDecoration(
                              hintText: 'Sex',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),

                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              hintText: 'Phone No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: 'E-mail ID',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: CountryController,
                          decoration: InputDecoration(
                              hintText: 'Country',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: stateController,
                          decoration: InputDecoration(
                              hintText: 'State',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // =====================
                    Container(
                        padding: const EdgeInsets.only(right: 240),
                        child: const Text(
                          "Addresses",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Current Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromARGB(115, 187, 187, 187)),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: HouseController,
                          decoration: InputDecoration(
                              hintText: 'House/Apartment No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: StreetController,
                          decoration: InputDecoration(
                              hintText: 'Street Name',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: locaController,
                          decoration: InputDecoration(
                              hintText: 'Locality',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: townController,
                          decoration: InputDecoration(
                              hintText: 'Town/City',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: districtController,
                          decoration: InputDecoration(
                              hintText: 'District',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),

                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: pinController,
                          decoration: InputDecoration(
                              hintText: 'Pincode',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // ==============================
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Office Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromARGB(115, 187, 187, 187)),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: buildbuController,
                          decoration: InputDecoration(
                              hintText: 'Building No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: streetbuController,
                          decoration: InputDecoration(
                              hintText: 'Street Name',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: locabuController,
                          decoration: InputDecoration(
                              hintText: 'Locality',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: districtbuController,
                          decoration: InputDecoration(
                              hintText: 'District',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: statebuController,
                          decoration: InputDecoration(
                              hintText: 'State',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: CountrybuController,
                          decoration: InputDecoration(
                              hintText: 'Country',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: pinbuController,
                          decoration: InputDecoration(
                              hintText: 'Pincode',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: officebuController,
                          decoration: InputDecoration(
                              hintText: 'Office Telephone No.',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    // ======================
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Permanent Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color.fromARGB(115, 187, 187, 187)),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: houseperController,
                          decoration: InputDecoration(
                              hintText: 'House/Apartment No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: streetperController,
                          decoration: InputDecoration(
                              hintText: 'Street Name',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: locaperController,
                          decoration: InputDecoration(
                              hintText: 'Locality',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: townperController,
                          decoration: InputDecoration(
                              hintText: 'Town/City',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: districtperController,
                          decoration: InputDecoration(
                              hintText: 'District',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: stateperController,
                          decoration: InputDecoration(
                              hintText: 'State',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: countryperController,
                          decoration: InputDecoration(
                              hintText: 'Country',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: pinerController,
                          decoration: InputDecoration(
                              hintText: 'Pincode',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    // ================
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Government",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: aadharController,
                          decoration: InputDecoration(
                              hintText: 'Addhar No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: panController,
                          decoration: InputDecoration(
                              hintText: 'Pan Card No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: voterController,
                          decoration: InputDecoration(
                              hintText: 'Voter ID',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: drivingController,
                          decoration: InputDecoration(
                              hintText: 'Driving Licence No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: digilockerController,
                          decoration: InputDecoration(
                              hintText: 'Digilocker ID',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: passportController,
                          decoration: InputDecoration(
                              hintText: 'Passport ID',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    // ==================
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Education",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: schoolboardController,
                          decoration: InputDecoration(
                              hintText: 'School Board',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: rollController,
                          decoration: InputDecoration(
                              hintText: 'Roll No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: schoolcodeController,
                          decoration: InputDecoration(
                              hintText: 'School Code',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: schoolController,
                          decoration: InputDecoration(
                              hintText: 'School Name',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: schooladdController,
                          decoration: InputDecoration(
                              hintText: 'School Address',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: scoreController,
                          decoration: InputDecoration(
                              hintText: 'Score(%)',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    // =============================
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Health",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: bloodController,
                          decoration: InputDecoration(
                              hintText: 'Blood Type',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: heightController,
                          decoration: InputDecoration(
                              hintText: 'Height',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: weightController,
                          decoration: InputDecoration(
                              hintText: 'Weight',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: conditionController,
                          decoration: InputDecoration(
                              hintText: 'Medical Condition',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: bmiController,
                          decoration: InputDecoration(
                              hintText: 'BMI',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: allgController,
                          decoration: InputDecoration(
                              hintText: 'Allergies',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    // ============================
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text(
                          "Bank Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: banknameController,
                          decoration: InputDecoration(
                              hintText: 'Bank Name',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: branchController,
                          decoration: InputDecoration(
                              hintText: 'Branch Code',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: accController,
                          decoration: InputDecoration(
                              hintText: 'Account No',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 20),
                      child: Column(children: [
                        TextField(
                          controller: ifscController,
                          decoration: InputDecoration(
                              hintText: 'IFSC Code',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    ElevatedButton(
                        onPressed: signIn,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 63, 61, 86),
                            minimumSize: Size(172, 55)),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        )),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }

  Future<void> signIn() async {
    final uid = user.uid;
    await firestoreInstance.collection("Userdata").doc(uid).set({
      'name': nameController.text.trim(),
      'Date_of_birth': DateController.text.trim(),
      'sex': sexController.text.trim(),
      'phone': int.parse(phoneController.text.trim()),
      'Country': CountryController.text.trim(),
      'State': stateController.text.trim(),
      'House_No': stateController.text.trim(),
      'Street_cur': StreetController.text.trim(),
      'locality_cur': locaController.text.trim(),
      'town_cur': townController.text.trim(),
      'district_cur': districtController.text.trim(),
      'pin_cur': pinController.text.trim(),
      'building_bu': buildbuController.text.trim(),
      'Street_bu': streetbuController.text.trim(),
      'locality_bu': locabuController.text.trim(),
      'district_bu': districtbuController.text.trim(),
      'State_bu': statebuController.text.trim(),
      'Country_bu': CountrybuController.text.trim(),
      'Pin_bu': CountryController.text.trim(),
      'office_phone': officebuController.text.trim(),
      'house_per': houseperController.text.trim(),
      'Street_per': streetbuController.text.trim(),
      'locality_per': locaperController.text.trim(),
      'town_per': townController.text.trim(),
      'district_per': districtperController.text.trim(),
      'state_per': stateperController.text.trim(),
      'Country_per': countryperController.text.trim(),
      'pin_per': pinerController.text.trim(),
      'aadhar_number': aadharController.text.trim(),
      'pan_number': panController.text.trim(),
      'voter': voterController.text.trim(),
      'driving': drivingController.text.trim(),
      'digilocker': digilockerController.text.trim(),
      'passport': passportController.text.trim(),
      'school_board': schoolController.text.trim(),
      'school_roll': rollController.text.trim(),
      'school_code': schoolcodeController.text.trim(),
      'school_name': schoolController.text.trim(),
      'school_address': schooladdController.text.trim(),
      'score': scoreController.text.trim(),
      'blood': bloodController.text.trim(),
      'height': heightController.text.trim(),
      'Weight': weightController.text.trim(),
      'medical_conditions': conditionController.text.trim(),
      'bmi': bmiController.text.trim(),
      'allergies': allgController.text.trim(),
      'bank_name': banknameController.text.trim(),
      'branch': branchController.text.trim(),
      'account_number': accController.text.trim(),
      'ifsc_code': ifscController.text.trim(),
    });
  }
}
