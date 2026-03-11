import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          S.of(context).Sign_Up,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  S.of( context).Complete_Profile,
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  S.of(context).Please_provide_your_details_to_continue,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 40),
                _buildTextField(
                  S.of( context).First_Name,
                  S.of(context).Enter_your_First_Name,
                  Icons.person_outline,
                  firstNameController,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  S.of( context).Last_Name,
                  S.of(context).Enter_your_Last_Name,
                  Icons.person_outline,
                  lastNameController,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  S.of( context).Phone_Number,
                  S.of(context).Enter_your_Phone_Number,
                  Icons.phone_outlined,
                  phoneController,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  S.of( context).Adress,
                  S.of(context).Enter_your_Adress,
                  Icons.location_on_outlined,
                  addressController,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Profile completed (UI-only)'),
                          ),
                        );
                        // بعد كده ممكن تعمل Navigation للـ Home Screen
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF7043),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: Text(
                      S.of( context).Continue,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  S.of(context).Discription,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    String hint,
    IconData icon,
    TextEditingController controller,
  ) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) return '$label is required';
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: Icon(icon, color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
      ),
    );
  }
}
