
//https://leetcode.com/problems/longest-common-prefix/


List<String> mockList = ["zab", "labcd", "abcdabe"];

void main(List<String> args) {
  print(longestCommonPrefix(mockList));
}



String longestCommonPrefix(List<String> strs) {
  if(strs.length == 1) return strs.first;

  if(strs.isEmpty) return "";

  String prefix = strs.first;

  for(int i = 1; i< strs.length && prefix != "" ; i++){
    while(!strs[i].startsWith(prefix)){
      prefix = prefix.substring(0,prefix.length-1);
    }
  }

  return prefix;
}