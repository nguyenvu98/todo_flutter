import 'package:flutter/material.dart';

class WidgetManager {
  static Widget customTextField({
    required String labelText,  
    required TextEditingController controller,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }){
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: validator,    
    );
  }

static Widget customButton({
    required String text,
    required VoidCallback onPressed,
    Color color = Colors.blue,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          // side: BorderSide(color: Colors.red)

        ),// backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 75, 128, 181)),
      ),
      onPressed: () {  },
      child: Text(text),
    );
  }

  static Widget customButtonFullWidth({
    required String text,
    required VoidCallback onPressed,
    Color color = Colors.blue,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {  },
      child: Text(text),
      ),
    );
  }
}