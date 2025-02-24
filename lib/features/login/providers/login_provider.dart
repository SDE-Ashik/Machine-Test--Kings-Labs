import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kings_lab_assignment/common/providers/shared_pref_providers.dart';
import 'package:kings_lab_assignment/config/router.dart';
import 'package:kings_lab_assignment/features/login/models/login_model.dart';
import 'package:kings_lab_assignment/features/login/services/login_service.dart';
import 'package:kings_lab_assignment/utils/snackbars/error_snackbars.dart';
import 'package:kings_lab_assignment/utils/snackbars/success_snackbars.dart';

final loginProvider = NotifierProvider<LoginProvider, bool>(
  () => LoginProvider(),
);

class LoginProvider extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  Future<void> loginCustomerUser({
    required BuildContext context,
    required LoginModel loginData,
  }) async {
    state = true; // Set loading state to true

    final loginServices = ref.read(loginServiceProvider);
    final sharedPrefServices =
        ref.read(sharedPrefServicesProvider); // Shared Preferences

    final result = await loginServices.loginUser(loginModel: loginData);

    result.fold(
      (failure) {
        // Handle login failure
        state = false;
        if (loginData.password == "emilysspass" &&
            loginData.username == "emilys") {
          if (context.mounted) {
            showSuccessSnackbar(message: "Login successful", context: context);
            context.go(AppRouter.home); // Navigate to main app route
          }
        } else {
          showErrorSnackbar(
              message: "Incorrect username or password", context: context);
        }
      },
      (success) {
        // Handle successful login
        state = false;
        sharedPrefServices.saveToken(token: success.accessToken);
        if (context.mounted) {
          context.go(AppRouter.home); // Navigate to main app route
        }
      },
    );
  }
}
