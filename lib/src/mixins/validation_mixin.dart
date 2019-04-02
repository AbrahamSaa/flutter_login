class validationMixin {
  String validatePass(String val){
    if(val.length < 4 ){
      return "Password must be at least 4 characters";
    }

    return null;
  }

  String validateEmail(String val){
    if(!val.contains("@")){
      return "Please enter a valid email";
    }

    return null;
  }
}