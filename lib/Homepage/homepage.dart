import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top bar with menu and profile
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu,
                        size: 30, color: Color(0xFF094067)),
                    onPressed: () {
                      // TODO: Open sidebar or drawer
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  Container(
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
            ),
            // Greeting
            const Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good morning, Martins',
                  style: const TextStyle(
                    fontFamily: 'NotoSans',
                    color: Color(0xFF094067),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 10, top: 7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'How can we help you today?',
                  style: const TextStyle(
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
                height: 86,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _HomeIconButton(
                      image: 'assets/vectors/doctor.png',
                      onTap: () {
                        // TODO: Navigate to Doctors page
                      },
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/Appointments.png',
                      onTap: () {
                        // TODO: Navigate to Doctor Profile/Appointment page
                      },
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/prescription.png',
                      onTap: () {
                        // TODO: Navigate to Prescription page
                      },
                    ),
                    const _HomeIconButton(
                      image: 'assets/vectors/records.png',
                    ),
                    const _HomeIconButton(
                      image: 'assets/vectors/maternal child.png',
                    ),
                    _HomeIconButton(
                      image: 'assets/vectors/mental health.png',
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
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
  final VoidCallback? onTap;

  const _HomeIconButton({required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            width: 60,
            height: 86,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
