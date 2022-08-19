import 'package:flutter/material.dart';

class HorizontalPhoneDirectoryScreen extends StatelessWidget {
  const HorizontalPhoneDirectoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> phoneData = [
      {
        'id': '1',
        'post': 'Dean of Academic Affair',
        'code': 'DOAA',
        'personName': 'Shalabh',
        'email': 'doaa@iitk.ac.in',
        'officePhoneNo': '7674,7905',
        'homePhoneNo': '8238',
        'office': 'AAB-203',
        'fax': '2590534',
      },
      {
        'id': '2',
        'post': 'Dean of Administration',
        'code': 'DOAD',
        'personName': 'Braj Bhushan',
        'email': 'doad@iitk.ac.in',
        'officePhoneNo': '2100,7024',
        'homePhoneNo': '8281',
        'office': 'FB-281',
        'fax': '',
      },
      {
        'id': '3',
        'post': 'Dean of Digital Infrastructure and Automation',
        'code': 'DDIA',
        'personName': 'Ashish Dutta',
        'email': 'ddia@iitk.ac.in',
        'officePhoneNo': '7252,7562',
        'homePhoneNo': '8710',
        'office': 'CC-105',
        'fax': '',
      },
      {
        'id': '4',
        'post': 'Dean of International Relation',
        'code': 'DOIR',
        'personName': 'Dhirendra S. Katti',
        'email': 'doir@iitk.ac.in',
        'officePhoneNo': '7701,4028',
        'homePhoneNo': '8774',
        'office': 'AAB-206',
        'fax': '',
      },
      {
        'id': '5',
        'post': 'Dean of Faculty Affair',
        'code': 'DOFA',
        'personName': 'Amalendu Chandra',
        'email': 'dofa@iitk.ac.in',
        'officePhoneNo': '7414,7976,7976',
        'homePhoneNo': '8446',
        'office': 'FB-262',
        'fax': '259(392)6046',
      },
      {
        'id': '6',
        'post': 'Dean of Infrastructure and Planning',
        'code': 'DOIP',
        'personName': 'Samit Ray Chaudhuri',
        'email': 'doip@iitk.ac.in',
        'officePhoneNo': '6159,6160,7267',
        'homePhoneNo': '8622',
        'office': 'FB-251',
        'fax': '',
      },
      {
        'id': '7',
        'post': 'Dean of Research & Development',
        'code': 'DORD',
        'personName': 'A R Harish',
        'email': 'dord@iitk.ac.in',
        'officePhoneNo': '7578,40040,4041',
        'homePhoneNo': '8590',
        'office': 'FB-151C',
        'fax': '',
      },
      {
        'id': '8',
        'post': 'Dean of Resourses and Alumni',
        'code': 'DORA',
        'personName': 'Kantesh Balani',
        'email': 'dora@iitk.ac.in',
        'officePhoneNo': '7877,6149',
        'homePhoneNo': '8711',
        'office': 'FB-270',
        'fax': '',
      },
      {
        'id': '9',
        'post': 'Dean of Student Affair',
        'code': 'DOSA',
        'personName': 'Siddhartha Panda',
        'email': 'dosa@iitk.ac.in',
        'officePhoneNo': '7203,6146',
        'homePhoneNo': '8459',
        'office': 'FB-271C',
        'fax': '2590062',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Phone Directory'),
        backgroundColor: const Color.fromARGB(255, 129, 149, 251),
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: phoneData.length,
          itemBuilder: (context, index) {
            final currentItem = phoneData[index];
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 480,
                  width: 350,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 129, 149, 251),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 190, 200, 254),
                          offset: Offset(0, 20),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ]),
                  padding: const EdgeInsets.all(20),
                ),
                Positioned(
                  top: 190,
                  left: 30,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(15),
                    height: 380,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      // color: const Color.fromARGB(255, 129, 149, 251),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          "${currentItem['personName']}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${currentItem['post']}"
                          '( ${currentItem['code']})',
                          textAlign: TextAlign.center,
                        ),
                        DetailsCardModel(
                          icon: Icons.email_rounded,
                          info: 'Email:' " ${currentItem['email']}",
                        ),
                        DetailsCardModel(
                          icon: Icons.phone,
                          info: 'Office Phone No:'
                              "${currentItem['officePhoneNo']}",
                        ),
                        DetailsCardModel(
                          icon: Icons.phone,
                          info: 'Home Phone No:'
                              " ${currentItem['homePhoneNo']}",
                        ),
                        DetailsCardModel(
                          icon: Icons.home_filled,
                          info: 'Office:' " ${currentItem['office']}",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 136,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      size: 100,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

// ignore: must_be_immutable
class DetailsCardModel extends StatelessWidget {
  DetailsCardModel({
    Key? key,
    required this.icon,
    required this.info,
  }) : super(key: key);
  IconData icon;
  String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 270,
      padding: const EdgeInsets.all(5),
      // color: Colors.white,
      child: Card(
        color: const Color.fromARGB(255, 129, 149, 251),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 5,
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              info,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
