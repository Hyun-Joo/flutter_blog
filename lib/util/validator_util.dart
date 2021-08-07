import 'package:validators/validators.dart';

Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return '유저네임에 공백이 들어갈 수 없습니다.';
    } else if (!isAlphanumeric(value)) {
      return '유저네임에는 알파벳, 숫자만 들어갈 수 있습니다.';
    } else if (value.length > 12) {
      return '유저네임의 길이를 초과하였습니다.';
    }
    return null;
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return '패스워드에 공백이 들어갈 수 없습니다.';
    } else if (value.length < 4 || value.length > 12) {
      return '패스워드는 4자 이상 12자 이하로만 설정 가능합니다.';
    }
    return null;
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return '이메일에 공백이 들어갈 수 없습니다.';
    } else if (!isEmail(value)) {
      return '올바른 이메일 주소를 입력해 주세요.';
    }
    return null;
  };
}

Function validateTitle() {
  return (String? value) {
    if (value!.isEmpty) {
      return '제목을 입력해 주세요.';
    } else if (value.length > 30) {
      return '제목은 30자를 초과할 수 없습니다.';
    }
    return null;
  };
}

Function validateContent() {
  return (String? value) {
    if (value!.isEmpty) {
      return '내용을 입력해 주세요.';
    } else if (value.length > 500) {
      return '500자를 초과하여 입력할 수 없습니다.';
    }
    return null;
  };
}
