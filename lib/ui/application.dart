import 'package:flutter/material.dart';
import 'package:visa_app/theme.dart';
import 'package:visa_app/widget/datepicker.dart';
import 'package:visa_app/widget/textfield.dart';

class MyFormPage extends StatefulWidget {
  MyFormPage({super.key});

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _passportNoController = TextEditingController();
  final TextEditingController _placeOfIssueController = TextEditingController();
  final TextEditingController _dateOfIssueController = TextEditingController();
  final TextEditingController _dateOfExpiryController = TextEditingController();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _nicController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _placeOfBirthController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _occupationAddressController =
      TextEditingController();

  final TextEditingController _visaTypeController = TextEditingController();
  final TextEditingController _visaIssuedDateController =
      TextEditingController();
  final TextEditingController _visaValidityController = TextEditingController();
  final TextEditingController _leavingDateController = TextEditingController();
  final TextEditingController _lastLocationController = TextEditingController();
  final TextEditingController _arrivalDateController = TextEditingController();
  final TextEditingController _purposeController = TextEditingController();
  final TextEditingController _routeController = TextEditingController();
  final TextEditingController _travelModeController = TextEditingController();
  final TextEditingController _moneyAmountController = TextEditingController();
  final TextEditingController _moneyTypeController = TextEditingController();

  late TabController _tabController;
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void _nextTab() {
    if (_tabController.index < 3) {
      setState(() {
        _currentStep = _tabController.index + 1;
      });
      _tabController.animateTo(_tabController.index + 1);
    }
  }

  void _previousTab() {
    if (_tabController.index > 0) {
      setState(() {
        _currentStep = _tabController.index - 1;
      });
      _tabController.animateTo(_tabController.index - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Visa Application Form', style: appbarStyle),
          backgroundColor: primaryClr,
        ),
        body: Column(
          children: [
            _buildTimeline(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildPassportDetailsTab(),
                  _buildPersonalDetailsTab(),
                  _buildContactDetailsTab(),
                  _buildVisaDetailsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildTimeline() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStepIndicator("Passport", 0),
          _buildDivider(),
          _buildStepIndicator("Personal", 1),
          _buildDivider(),
          _buildStepIndicator("Contact", 2),
          _buildDivider(),
          _buildStepIndicator("VISA", 3),
        ],
      ),
    );
  }

  Widget _buildStepIndicator(String label, int stepIndex) {
    bool isCompleted = stepIndex <= _currentStep;
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: isCompleted ? primaryClr : Colors.grey,
          child: Icon(
            size: 22,
            isCompleted ? Icons.check : Icons.circle,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: subHeadingStyle,
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Expanded(
      child: Divider(
        thickness: 2,
        color: _currentStep > 0 ? Colors.blue : Colors.grey,
      ),
    );
  }

  Widget _buildPassportDetailsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(
            placeholder: 'Passport No',
            controller: _passportNoController,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            placeholder: 'Place of Issue',
            controller: _placeOfIssueController,
          ),
          const SizedBox(height: 16),
          CustomDatePicker(
            placeholder: 'Date of Issue',
            controller: _dateOfIssueController,
          ),
          const SizedBox(height: 16),
          CustomDatePicker(
            placeholder: 'Date of Expiry',
            controller: _dateOfExpiryController,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 100), // Placeholder for the 'Back' button
              ElevatedButton(
                onPressed: _nextTab,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryClr,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide.none,
                  ),
                ),
                child: Text("Next", style: nextButtonStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalDetailsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              placeholder: 'Full Name',
              controller: _fullNameController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Gender',
              controller: _genderController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Nationality',
              controller: _nationalityController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'NIC',
              controller: _nicController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CustomDatePicker(
              placeholder: 'Date of Birth',
              controller: _dobController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Place of Birth',
              controller: _placeOfBirthController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Occupation',
              controller: _occupationController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Height',
              controller: _heightController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32), // Extra space before the buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _previousTab,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  child: const Text("Back"),
                ),
                ElevatedButton(
                  onPressed: _nextTab,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.blue, // Assuming 'primaryClr' is blue
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  child:
                      const Text("Next", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactDetailsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(
            placeholder: 'Address',
            controller: _addressController,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            placeholder: 'Telephone Number',
            controller: _telephoneController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            placeholder: 'Email Address',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            placeholder: 'Occupation Address',
            controller: _occupationAddressController,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _previousTab,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide.none,
                  ),
                ),
                child: const Text("Back"),
              ),
              ElevatedButton(
                onPressed: _nextTab,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Assuming 'primaryClr' is blue
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide.none,
                  ),
                ),
                child:
                    const Text("Next", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVisaDetailsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        // Wrap content inside SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              placeholder: 'Visa Type',
              controller: _visaTypeController,
            ),
            const SizedBox(height: 16),
            CustomDatePicker(
              placeholder: 'Visa issued date',
              controller: _visaIssuedDateController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Visa validity period',
              controller: _visaValidityController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CustomDatePicker(
              placeholder: 'Leaving date',
              controller: _leavingDateController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Last Location',
              controller: _lastLocationController,
            ),
            const SizedBox(height: 16),
            CustomDatePicker(
              placeholder: 'Date of Arrival',
              controller: _arrivalDateController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Purpose',
              controller: _purposeController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Route',
              controller: _routeController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Travel Mode',
              controller: _travelModeController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Amount Of Money',
              controller: _moneyAmountController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              placeholder: 'Money Type',
              controller: _moneyTypeController,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _previousTab,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  child: const Text("Back"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    backgroundColor: primaryClr,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  onPressed: () {
                    // Add submission logic here
                    print("Form submitted");
                  },
                  child: Text("Submit", style: nextButtonStyle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
