class Validator {
  static String? validateName({required String name}) {
    if (name == null) {
      return null;
    }
    if (name.isEmpty) {
      return 'Nome não pode ser vazio';
    }

    return null;
  }

  static String? validateEmail({required String email}) {
    if (email == null) {
      return null;
    }
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    if (email.isEmpty) {
      return 'Email não pode ser vazio';
    } else if (!emailRegExp.hasMatch(email.trim())) {
      return 'Use um email válido';
    }

    return null;
  }

  static String? validatePassword({required String password}) {
    if (password == null) {
      return null;
    }
    if (password.isEmpty) {
      return 'Senha não pode ser vazia';
    } else if (password.length < 6) {
      return 'Senha deve ter no minimo 6 caracteres';
    }

    return null;
  }
}