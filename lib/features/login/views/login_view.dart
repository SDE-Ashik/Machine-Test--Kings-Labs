


// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:kings_lab_assignment/features/login/models/login_model.dart';
// // import 'package:kings_lab_assignment/features/login/providers/login_provider.dart';

// // class LoginView extends ConsumerStatefulWidget {
// //   const LoginView({super.key});

// //   @override
// //   ConsumerState<LoginView> createState() => _LoginViewState();
// // }

// // class _LoginViewState extends ConsumerState<LoginView> {
// //   final TextEditingController _usernameController =
// //       TextEditingController(text: 'emilys');
// //   final TextEditingController _passwordController =
// //       TextEditingController(text: 'emilysspass');

// //   @override
// //   Widget build(BuildContext context) {
// //     // Watch the loading state from the provider
// //     final isLoading = ref.watch(loginProvider);

// //     return Scaffold(
// //       extendBodyBehindAppBar: true,
// //       // appBar:
// //       //  AppBar(
// //       //   backgroundColor: Colors.transparent,
// //       //   elevation: 0,
// //       //   title: const Text('Login'),
// //       //   centerTitle: true,
// //       // ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [Colors.teal.shade400, Colors.blue.shade800],
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //           ),
// //         ),
// //         child: Center(
// //           child: SingleChildScrollView(
// //             padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //             child: ConstrainedBox(
// //               constraints: const BoxConstraints(maxWidth: 400),
// //               child: Card(
// //                 color: Colors.white.withOpacity(0.92),
// //                 elevation: 8,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(32.0),
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       // Logo or Avatar
// //                       CircleAvatar(
// //                         backgroundColor: Colors.teal,
// //                         radius: 40,
// //                         child: Icon(
// //                           Icons.person,
// //                           size: 40,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 24),
// //                       Text(
// //                         'Welcome Back!',
// //                         style:
// //                             Theme.of(context).textTheme.headlineSmall?.copyWith(
// //                                   fontWeight: FontWeight.bold,
// //                                   color: Colors.teal,
// //                                 ),
// //                       ),
// //                       const SizedBox(height: 32),
// //                       // Username Field
// //                       TextField(
// //                         controller: _usernameController,
// //                         decoration: InputDecoration(
// //                           labelText: 'Username',
// //                           prefixIcon: const Icon(Icons.person_outline),
// //                           filled: true,
// //                           fillColor: Colors.grey.shade200,
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: BorderSide.none,
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 16),
// //                       // Password Field
// //                       TextField(
// //                         controller: _passwordController,
// //                         obscureText: true,
// //                         decoration: InputDecoration(
// //                           labelText: 'Password',
// //                           prefixIcon: const Icon(Icons.lock_outline),
// //                           filled: true,
// //                           fillColor: Colors.grey.shade200,
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: BorderSide.none,
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 32),
// //                       // Login Button / Loader
// //                       isLoading
// //                           ? const CircularProgressIndicator()
// //                           : SizedBox(
// //                               width: double.infinity,
// //                               child: ElevatedButton(
// //                                 style: ElevatedButton.styleFrom(
// //                                   padding:
// //                                       const EdgeInsets.symmetric(vertical: 16),
// //                                   backgroundColor: Colors.teal,
// //                                   shape: RoundedRectangleBorder(
// //                                     borderRadius: BorderRadius.circular(12),
// //                                   ),
// //                                 ),
// //                                 onPressed: () {
// //                                   final loginData = LoginModel(
// //                                     username: _usernameController.text.trim(),
// //                                     password: _passwordController.text.trim(),
// //                                   );
// //                                   ref
// //                                       .read(loginProvider.notifier)
// //                                       .loginCustomerUser(
// //                                         context: context,
// //                                         loginData: loginData,
// //                                       );
// //                                 },
// //                                 child: const Text(
// //                                   'Login',
// //                                   style: TextStyle(
// //                                     fontSize: 16,
// //                                     fontWeight: FontWeight.bold,
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kings_lab_assignment/features/login/models/login_model.dart';
// import 'package:kings_lab_assignment/features/login/providers/login_provider.dart';

// class LoginView extends ConsumerStatefulWidget {
//   const LoginView({super.key});

//   @override
//   ConsumerState<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends ConsumerState<LoginView> {
//   final TextEditingController _usernameController =
//       TextEditingController(text: 'emilys');
//   final TextEditingController _passwordController =
//       TextEditingController(text: 'emilysspass');

//   @override
//   Widget build(BuildContext context) {
//     final isLoading = ref.watch(loginProvider);

//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: BoxDecoration(
//               // gradient: LinearGradient(
//                  gradient: LinearGradient(
//             colors: [Colors.teal.shade400, Colors.blue.shade800],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//               //   colors: [
//               //     Colors.deepPurple.shade400,
//               //     Colors.blue.shade800,
//               //   ],
//               //   begin: Alignment.topLeft,
//               //   end: Alignment.bottomRight,
//               // ),
//             ),
//           ),
//           // Decorative Circular Elements
//           Positioned(
//             top: -50,
//             right: -50,
//             child: Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.1),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: -60,
//             left: -60,
//             child: Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.1),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//           Center(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(24.0),
//               child: ConstrainedBox(
//                 constraints: const BoxConstraints(maxWidth: 400),
//                 child: Card(
//                   color: Colors.white.withOpacity(0.95),
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 40.0, horizontal: 32.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Logo with Hero Animation
//                         Hero(
//                           tag: 'loginLogo',
//                           child: CircleAvatar(
//                             radius: 50,
//                             backgroundColor: Colors.blue.shade700,
//                             child: const Icon(
//                               Icons.lock,
//                               size: 50,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           'Sign In',
//                           style: Theme.of(context)
//                               .textTheme
//                               .headlineMedium
//                               ?.copyWith(
//                                 color: Colors.blue.shade900,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           'Welcome back! Please login to your account.',
//                           textAlign: TextAlign.center,
//                           style:
//                               Theme.of(context).textTheme.bodyMedium?.copyWith(
//                                     color: Colors.grey.shade700,
//                                   ),
//                         ),
//                         const SizedBox(height: 30),
//                         // Username Field
//                         TextField(
//                           controller: _usernameController,
//                           decoration: InputDecoration(
//                             labelText: 'Username',
//                             prefixIcon: const Icon(Icons.person_outline),
//                             filled: true,
//                             fillColor: Colors.grey.shade200,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         // Password Field
//                         TextField(
//                           controller: _passwordController,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             prefixIcon: const Icon(Icons.lock_outline),
//                             filled: true,
//                             fillColor: Colors.grey.shade200,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         // Login Button / Loader
//                         isLoading
//                             ? const CircularProgressIndicator()
//                             : SizedBox(
//                                 width: double.infinity,
//                                 child: ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 16),
//                                     backgroundColor: Colors.blue.shade700,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     final loginData = LoginModel(
//                                       username: _usernameController.text.trim(),
//                                       password: _passwordController.text.trim(),
//                                     );
//                                     ref
//                                         .read(loginProvider.notifier)
//                                         .loginCustomerUser(
//                                           context: context,
//                                           loginData: loginData,
//                                         );
//                                   },
//                                   child: const Text(
//                                     'Login',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                         const SizedBox(height: 20),
//                         TextButton(
//                           onPressed: () {
//                             // Handle forgot password action
//                           },
//                           child: Text(
//                             'Forgot Password?',
//                             style: TextStyle(
//                               color: Colors.blue.shade700,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kings_lab_assignment/features/login/models/login_model.dart';
import 'package:kings_lab_assignment/features/login/providers/login_provider.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final TextEditingController _usernameController =
      TextEditingController(text: 'emilys');
  final TextEditingController _passwordController =
      TextEditingController(text: 'emilysspass');

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loginProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
    
      body: SafeArea(
        child: Stack(
          children: [
            // Background Gradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.teal.shade400, Colors.blue.shade800],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            // Decorative Circular Elements
            Positioned(
              top: -50,
              right: -50,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -60,
              left: -60,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Login Form
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Card(
                    color: Colors.white.withOpacity(0.95),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40.0, horizontal: 32.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Logo with Hero Animation
                          Hero(
                            tag: 'loginLogo',
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue.shade700,
                              child: const Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Welcome back! Please login to your account.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey.shade700),
                          ),
                          const SizedBox(height: 30),
                          // Username Field
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              prefixIcon: const Icon(Icons.person_outline),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Password Field
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: const Icon(Icons.lock_outline),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Login Button or Loader
                          isLoading
                              ? const CircularProgressIndicator()
                              : SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      backgroundColor: Colors.blue.shade700,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () {
                                      final loginData = LoginModel(
                                        username:
                                            _usernameController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      );
                                      ref
                                          .read(loginProvider.notifier)
                                          .loginCustomerUser(
                                            context: context,
                                            loginData: loginData,
                                          );
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              // Handle forgot password action
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue.shade700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
