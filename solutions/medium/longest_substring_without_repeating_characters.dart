
// https://leetcode.com/problems/longest-substring-without-repeating-characters/

void main(List<String> args) {
  print(lengthOfLongestSubstring("element"));
}

int lengthOfLongestSubstring(String s) {
  String usedCharacters = "";
  int length = 0;

  for (int i = 0; i < s.length; i++) {
    if (usedCharacters.indexOf(s[i]) > -1) {
      usedCharacters = usedCharacters.split(s[i]).last;
    } else {
      usedCharacters = usedCharacters + s[i];
    }
    if (usedCharacters.length > length) {
      length = usedCharacters.length;
    }
  }
  return length;
}

int lengthOfLongestSubstringV1(String s) {
  String usedCharacters = "";
  int length = 0;

  for (int i = 0; i < s.length; i++) {
    if (usedCharacters.indexOf(s[i]) > -1) {
      usedCharacters = usedCharacters.substring(usedCharacters.indexOf(s[i]));
    } else {
      usedCharacters = usedCharacters + s[i];
    }
    if (usedCharacters.length > length) {
      length = usedCharacters.length;
    }
  }
  return length;
}
