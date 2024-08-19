import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Text(
                'LOGO', // Bu alanı logo ile değiştirebilirsiniz
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              _buildTextField('Adınız ve Soyadınız'),
              SizedBox(height: 16),
              _buildTextField('E-Posta Adresiniz'),
              SizedBox(height: 16),
              _buildTextField('Telefon Numaranız'),
              SizedBox(height: 16),
              _buildTextField('Şifreniz', obscureText: true),
              SizedBox(height: 16),
              _buildTextField('Şifre Tekrarı', obscureText: true),
              SizedBox(height: 20),
              _buildCheckBox('Şartları ve Koşulları okudum ve kabul ediyorum.'),
              _buildCheckBox('Gizlilik Politikasını okudum ve kabul ediyorum.'),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Sonraki butonu basıldığında yapılacaklar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor
                  : Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sonraki',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }

  Widget _buildCheckBox(String text) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (bool? value) {}),
        Text(text),
      ],
    );
  }
}
