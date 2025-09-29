import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const route = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _confirm = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _pass.dispose();
    _confirm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
pertemuan-5
    Widget requiredLabel(String text) => Row(
      children: [
        Text(text, style: const TextStyle(fontSize: 13)),
        const Text(' *', style: TextStyle(color: Colors.red, fontSize: 13)),
      ],
    );


    // komponen kecil buat label + tanda *
    Widget requiredLabel(String text) => Row(
      children: [
        Text(text, style: const TextStyle(fontSize: 13)),
        const Text('*', style: TextStyle(color: Colors.red, fontSize: 13)),
      ],
    );

    // tombol biru dengan gradient (UI-only)
master
    Widget primaryButton(String label, VoidCallback onTap) => GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 46,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: const LinearGradient(
 pertemuan-5
            colors: [Color(0xFF1E88FF), Color(0xFF207DFF)],
=======
            colors: [Color(0xFF1E88FF), Color(0xFF2D70FF)],
 master
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1E88FF).withOpacity(0.25),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
 pertemuan-5
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // logo
=======
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
 master
                Image.asset(
                  'assets/logo-mola.png',
                  height: 80,
                  fit: BoxFit.contain,
                ),
 pertemuan-5
                const SizedBox(height: 18),

                // judul
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign Up Now and Unlock the Power of JustDuit',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),

                // form card

                const SizedBox(height: 20),

                const Text(
                  'Sign Up Now and Unlock the Power of Justduit',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),

                // Card Form
 master
                Container(
                  width: 360,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 16,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
 pertemuan-5
                      requiredLabel('Full Name'),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _name,

                      // Full Name
                      requiredLabel('Fulll Name'),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _name,
                        textCapitalization: TextCapitalization.words,
 master
                        decoration: const InputDecoration(
                          hintText: 'Enter your full name',
                        ),
                      ),
                      const SizedBox(height: 14),

 pertemuan-5

                      // Email
 master
                      requiredLabel('Email Address'),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                        ),
                      ),
                      const SizedBox(height: 14),

 pertemuan-5
=======
                      // Password
 master
                      requiredLabel('Password'),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _pass,
                        obscureText: true,
                        decoration: const InputDecoration(
 pertemuan-5
                          hintText: 'Enter your password',

                          hintText: 'Create a password',
 master
                        ),
                      ),
                      const SizedBox(height: 14),

 pertemuan-5

                      // Confirm Password
 master
                      requiredLabel('Confirm Password'),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _confirm,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Re-enter your password',
                        ),
                      ),
                      const SizedBox(height: 16),

pertemuan-5
                      primaryButton('Continue', () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Sign Up Success')),
                        );

                        // langsung pindah ke login, hapus semua route sebelumnya

                    // Tombol Continue
                      primaryButton('Continue', () {
                        // tampilkan snackbar sukses
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Sign up success')),
                        );

                        // pindah ke Sign In dan hapus semua route sebelumnya
 master
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          LoginScreen.route,
                          (route) => false,
                        );
                      }),
 pertemuan-5
                      const SizedBox(height: 14),


                      const SizedBox(height: 12),

                      // Tombol balik ke login manual
 master
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pushReplacementNamed(
                            context,
                            LoginScreen.route,
                          ),
                          child: const Text(
                            'Already have an account? Sign In',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
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
