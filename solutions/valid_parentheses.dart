// https://leetcode.com/problems/valid-parentheses/

void main(List<String> args) {
  print(isValid("(]"));
}

Map<String, String> brackets = {
  ")": "(",
  "}": "{",
  "]": "[",
};

bool isValid(String s){
  Brackets? bracket = bracketsBuilder(s);
  if(bracket == null) return false;
  return bracket.isValid;
}


Brackets? bracketsBuilder(String s){
  Brackets bracket = Brackets();
  Brackets currentBracket = bracket;

  for(int i = 0; i<s.length ; i++){
    if(brackets.containsValue(s[i])){
      currentBracket.childBrackets.add(Brackets(inputParentBrackets :currentBracket));
      currentBracket = currentBracket.childBrackets.last;
      currentBracket.openBracket = s[i];
    }
    else{
      currentBracket.closeBracket = s[i];
      if(currentBracket.parentBracket == null) return null;
      currentBracket = currentBracket.parentBracket!;
    }
  }

  return bracket;
}


class Brackets {
  String? openBracket;
  String? closeBracket;
  Brackets? parentBracket;

  Brackets({Brackets? inputParentBrackets}){
    parentBracket = inputParentBrackets;
  }

  List<Brackets> childBrackets = [];

  bool get isValid {
    if (openBracket != null || closeBracket != null) {
      if (brackets[closeBracket] != openBracket) return false;
    }

    return !childBrackets.map<bool>((e) => e.isValid).contains(false);
  }
}

/*
List<String> example = [
  "()[]{}",
  "(]",
];

void main(List<String> args) {
  example.forEach((element) {
    print(isValid(element));
  });
}

Map<String,String> brackets = {
  ")":"(",
  "}":"{",
  "]":"[",
};

bool isValid(String s){
  List<String> openingBracket = [];

  for(int i = 0; i < s.length ; i++){
    String currentBracket = s[i];
    if(brackets.containsValue(currentBracket)){
      openingBracket.add(currentBracket);
    }else{
      if(brackets[currentBracket] == openingBracket.last){
        openingBracket.removeLast();
      }
      else{
        return false;
      }
    }
  }

  return openingBracket.isEmpty;
}
*/

