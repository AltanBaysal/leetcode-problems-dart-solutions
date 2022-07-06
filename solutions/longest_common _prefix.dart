
//! Unfinished

List<String> l = ["ab","abcd","cdabe"];

void main(List<String> args) {
  print(commonLetters(l.toSet()));
}


Set<String> stringToSet(String string){
  return string.split("").toSet();
}

Set<String> commonLetters(Set<String> strings){
  List<Set<String>> letters = [];
  Set<String> commonLetters = {};  

  strings.forEach((element) {
     Set<String> strLetters = stringToSet(element);
     letters.add(strLetters);
     commonLetters.addAll(strLetters);
  });

  letters.forEach((element) {
    commonLetters.removeAll(commonLetters.difference(element));
  });

  return commonLetters;
}