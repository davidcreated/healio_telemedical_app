import 'package:flutter/material.dart';
import 'package:healio/Homepage/drawerpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // TODO: Add navigation logic for each tab if needed
      // Example:
      // if (index == 1) Navigator.push(context, MaterialPageRoute(builder: (_) => DoctorsPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF094067)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/vectors/circleavatar.png'),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 60),
          children: [
            ListTile(
              leading: Image.asset(
                'assets/vectors/consultation.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Consultation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/vectors/appointment1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Appointment & Scheduling',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
            Container(
              color: Colors.black,
              width: 40,
              height: 1,
              margin: const EdgeInsets.symmetric(vertical: 4),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/vectors/prescription1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Prescription & Medication Mgt',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/vectors/maternal1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Maternal & Child Health Education',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/vectors/mental1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Mental Health Support',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.black,
              width: 40,
              height: 1,
              margin: const EdgeInsets.symmetric(vertical: 4),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset(
                'assets/vectors/wearable1.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              title: const Text(
                'Corporate Insurance & Partnerships',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top bar with menu and profile
            const Padding(
              padding: EdgeInsets.only(top: 28.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
            // Greeting
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good morning, Martins',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    color: Color(0xFF094067),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'How can we help you today?',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    color: Color(0xFF094067),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search symptoms or doctor',
                  filled: true,
                  fillColor: const Color(0xFFE8FEFA),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                ),
              ),
            ),
            // Banner image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'assets/vectors/appointment.png',
                width: 343,
                height: 238,
                fit: BoxFit.cover,
              ),
            ),
            // Horizontal scrollable options
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: SizedBox(
                height: 90, // Increased height to fit image and text
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _HomeIconButton(
                      image: 'assets/vectors/doctor.png',
                      label: 'Doctors',
                      onTap: () {
                        // TODO: Navigate to Doctors page
                      },
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/Appointments.png',
                      label: 'Appointments',
                      onTap: () {
                        // TODO: Navigate to Doctor Profile/Appointment page
                      },
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/prescription.png',
                      label: 'Prescription',
                      onTap: () {
                        // TODO: Navigate to Prescription page
                      },
                    ),
                    const _HomeIconButton(
                      image: 'assets/vectors/records.png',
                      label: 'Records',
                    ),
                    const _HomeIconButton(
                      image: 'assets/vectors/maternal child.png',
                      label: 'Maternal',
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/mental health.png',
                      label: 'Mental Health',
                      onTap: () {
                        // TODO: Navigate to Mental Health Support page
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Upcoming Appointment
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Appointment',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: View all appointments
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Color(0xFF094067),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Appointment card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: () {
                  // TODO: Navigate to Doctor Profile
                },
                child: Image.asset(
                  'assets/vectors/eventcard1.png',
                  width: 359,
                  height: 146,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Top Doctors
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 10, top: 15, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Doctors',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: View all top doctors
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Color(0xFF094067),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Top Doctors cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Image.asset(
                'assets/vectors/drjoseph.png',
                width: 343,
                height: 71,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset(
                'assets/vectors/drgab.png',
                width: 343,
                height: 71,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTapped,
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
            icon: Icon(Icons.medical_services),
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
}

class _HomeIconButton extends StatelessWidget {
  final String image;
  final String label;
  final VoidCallback? onTap;

  const _HomeIconButton({
    required this.image,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black, // Changed to black
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// NOTE: Don't forget to import or define your NextPage widget at the top of this file:
// import 'package:your_app/next_page.dart';
