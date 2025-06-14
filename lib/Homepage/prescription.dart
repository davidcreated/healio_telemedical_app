import 'package:flutter/material.dart';
import 'package:healio/Homepage/homepage.dart';
import 'package:healio/Homepage/newprescription.dart';

class PrescriptionWidget extends StatefulWidget {
  const PrescriptionWidget({super.key});

  @override
  State<PrescriptionWidget> createState() => _PrescriptionWidgetState();
}

class _PrescriptionWidgetState extends State<PrescriptionWidget> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = true;
  bool checkboxValue3 = true;
  bool checkboxValue4 = true;
  int _selectedIndex = 2; // Prescriptions tab is selected by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Header image
            Container(
              width: double.infinity,
              height: 180.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/vectors/prescriptiontopbar.png'),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 75,
                    left: 16,
                    child: Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xFF002180),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white, size: 18),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                  // Medication buttons
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 366.6,
                      height: 45.6,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Active Medication Button
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 7, top: 3, bottom: 3),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xE2190B99),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                textStyle: const TextStyle(
                                  fontFamily: 'InterTight',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              child: const Text('Active Medication'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                foregroundColor: Colors.black,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                textStyle: const TextStyle(
                                  fontFamily: 'InterTight',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              child: const Text('Medication History'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Medication cards
            const SizedBox(height: 10),
            _medicationCard('assets/vectors/amox.png'),
            _medicationCard('assets/vectors/lin.png'),
            _medicationCard('assets/vectors/ome.png'),
            _medicationCard('assets/vectors/man.png'),
            // Today's Schedule
            const SizedBox(height: 28),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Todays's Schedule",
                  style: TextStyle(
                    fontFamily: 'NotoSerif',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // Morning
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Morning',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            // Morning Medications
            const SizedBox(height: 10),
            _medicationScheduleRow(
              'assets/vectors/lino1.png',
              checkboxValue1,
              (val) => setState(() => checkboxValue1 = val!),
            ),
            const SizedBox(height: 13),
            _medicationScheduleRow(
              'assets/vectors/amox1.png',
              checkboxValue2,
              (val) => setState(() => checkboxValue2 = val!),
            ),
            // Evening
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Evening',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            // Evening Medications
            const SizedBox(height: 13),
            _medicationScheduleRow(
              'assets/vectors/ome1.png',
              checkboxValue3,
              (val) => setState(() => checkboxValue3 = val!),
            ),
            const SizedBox(height: 13),
            _medicationScheduleRow(
              'assets/vectors/mian1.png',
              checkboxValue4,
              (val) => setState(() => checkboxValue4 = val!),
            ),
            // Add New Prescription Button
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewmedicationWidget(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF002180),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textStyle: const TextStyle(
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  child: const Text('Add New Prescription'),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 0) {
            // Always navigate to HomePage when Home icon is tapped
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (route) => false, // Remove all previous routes
            );
          } else if (index == 2) {
            // Navigate to Prescription page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrescriptionWidget(),
              ),
            );
          } else {
            setState(() {
              _selectedIndex = index;
            });
            // Add navigation for other tabs if needed
          }
        },
        selectedItemColor: const Color(0xFF094067),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Prescriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _medicationCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 344.0,
              height: 82.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _medicationScheduleRow(
      String imagePath, bool value, ValueChanged<bool?> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 188.0,
              height: 49.1,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            activeColor: const Color(0xFF05BB98),
            side: const BorderSide(
              width: 2,
              color: Color(0xFFE8FEFA),
            ),
          ),
        ),
      ],
    );
  }
}
