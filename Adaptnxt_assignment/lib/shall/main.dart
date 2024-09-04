import 'package:flutter/material.dart';
import 'package:untitled3/main.dart';
import 'package:untitled3/mycontainer.dart';
void main() {
  runApp( MaterialApp( home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      home: const MedicineScreen(),
    );
  }
}

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({super.key});

  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  final GlobalKey<MedicineFormState> _medicineFormKey = GlobalKey<MedicineFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Medicine Info'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back to the previous screen
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApps()));
            },
            child: const Text(
              'Next',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: MedicineForm(key: _medicineFormKey),
      floatingActionButton: FloatingActionButton.extended(label: const Text("Add more alarm",style: TextStyle(color: Colors.lightBlueAccent),),
        icon: Icon(Icons.add_box,color: Colors.lightBlueAccent,),backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          // Access the MedicineForm widget's state to add a new text field
          _medicineFormKey.currentState?.addNewTextField();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

class MedicineForm extends StatefulWidget {
  const MedicineForm({super.key});

  @override
  MedicineFormState createState() => MedicineFormState();
}

class MedicineFormState extends State<MedicineForm> {
  final List<Widget> _textFields = [];

  @override
  void initState() {
    super.initState();
    // Add initial text field
    _textFields.add(buildTextField());
  }

  void addNewTextField() {
    setState(() {
      _textFields.add(buildTextField());
    });
  }

  Widget buildTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Set time and dose',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              labelText: "08 : 00"
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Medicine Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'Enter name',
              ),
            ),
            const SizedBox(height: 20), // Space between TextField and radio buttons
            const Text(
              'Frequency',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5),
            const RadioButtonsSection(), // Section with radio buttons
            const SizedBox(height: 20), // Space before the first dynamic field
            Column(
              children: _textFields,
            ),
          ],
        ),
      ),
    );
  }
}

class RadioButtonsSection extends StatefulWidget {
  const RadioButtonsSection({super.key});

  @override
  _RadioButtonsSectionState createState() => _RadioButtonsSectionState();
}

class _RadioButtonsSectionState extends State<RadioButtonsSection> {
  String? _selectedValue; // Variable to store the selected radio button value

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      child: Column(
        children: [
          RadioListTile<String>(
            title: const Text('Daily'),
            value: 'Daily',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Specific days'),
            value: 'Specific days',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Interval'),
            value: 'Interval',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('As needed'),
            value: 'As needed',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
