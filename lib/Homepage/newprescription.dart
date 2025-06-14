import 'package:flutter/material.dart';

class NewmedicationWidget extends StatefulWidget {
  const NewmedicationWidget({super.key});

  @override
  State<NewmedicationWidget> createState() => _NewmedicationWidgetState();
}

class _NewmedicationWidgetState extends State<NewmedicationWidget> {
  final TextEditingController _medicationNameController =
      TextEditingController();
  final TextEditingController _importantNoteController =
      TextEditingController();

  String? _selectedDosage;
  String? _selectedDuration;
  String? _selectedTime;
  String? _selectedFood;

  final List<String> _dosageOptions = ['100 mg', '200 mg', '250 mg'];
  final List<String> _durationOptions = [
    '3 days',
    '7 days',
    '11 days',
    '14 days'
  ];
  final List<String> _timeOptions = ['Morning', 'Noon', 'Evening', 'Night'];
  final List<String> _foodOptions = ['Before Food', 'After Food'];

  @override
  void dispose() {
    _medicationNameController.dispose();
    _importantNoteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top bar with back button and title
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xE2190B99),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.chevron_left_sharp,
                            color: Colors.white, size: 24),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'New Prescription',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Medication Name',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 343,
                    height: 77,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: const Color(0xE2190B99)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: _medicationNameController,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintText: 'Medication name',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Dosage Dropdown with fixed size
                    SizedBox(
                      width: 94,
                      height: 40,
                      child: DropdownButtonFormField<String>(
                        value: _selectedDosage,
                        decoration: InputDecoration(
                          labelText: 'Dosage',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFE5E9F2),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                        ),
                        items: _dosageOptions
                            .map((option) => DropdownMenuItem(
                                  value: option,
                                  child: Text(option,
                                      style: const TextStyle(
                                          color: Color(0xE2190B99))),
                                ))
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _selectedDosage = val),
                        isExpanded: true,
                      ),
                    ),
                    const SizedBox(
                        width: 16), // Space between the two containers
                    // Duration Dropdown with fixed size
                    SizedBox(
                      width: 94,
                      height: 40,
                      child: DropdownButtonFormField<String>(
                        value: _selectedDuration,
                        decoration: InputDecoration(
                          labelText: 'Duration',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFE5E9F2),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                        ),
                        items: _durationOptions
                            .map((option) => DropdownMenuItem(
                                  value: option,
                                  child: Text(option,
                                      style: const TextStyle(
                                          color: Color(0xE2190B99))),
                                ))
                            .toList(),
                        onChanged: (val) =>
                            setState(() => _selectedDuration = val),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  'Medication Time',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _timeOptions.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 20),
                    itemBuilder: (context, index) {
                      final time = _timeOptions[index];
                      final isSelected = _selectedTime == time;
                      return ChoiceChip(
                        label: Text(
                          time,
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF334D99),
                            fontFamily: 'NotoSans',
                            fontSize: 12,
                          ),
                        ),
                        selected: isSelected,
                        selectedColor: const Color(0xFF334D99),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Color(0xFF334D99)),
                        ),
                        onSelected: (_) => setState(() => _selectedTime = time),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'To be taken',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: _foodOptions.map((food) {
                    final isSelected = _selectedFood == food;
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ChoiceChip(
                        label: Text(
                          food,
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF334D99),
                            fontFamily: 'NotoSans',
                            fontSize: 12,
                          ),
                        ),
                        selected: isSelected,
                        selectedColor: const Color(0xFF334D99),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Color(0xFF334D99)),
                        ),
                        onSelected: (_) => setState(() => _selectedFood = food),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Important Note',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 343,
                    height: 129,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: const Color(0xE2190B99)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: _importantNoteController,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          hintText: 'Type here',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Center(
                  child: SizedBox(
                    width: 278,
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {
                        // TODO: Add another medication logic
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF002180),
                        side: const BorderSide(color: Color(0xFF334D99)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: const TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Add another medication'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: SizedBox(
                    width: 278,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Done logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF002180),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        textStyle: const TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 22, // Increase this value as needed
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('Done'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
