
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
  List<String> openingBrackets = [];
  for(int i = 0 ; i<s.length ; i++ ){
    String char = s[i];
    if(brackets.containsKey(char)){
      if(openingBrackets.isEmpty)return false;
      if(openingBrackets.last != brackets[char]) return false;
      openingBrackets.removeLast();
    }else{
      openingBrackets.add(char);
    }
  }
  return openingBrackets.isEmpty;
}





/*
// Previous Solution


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
*/
