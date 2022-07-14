
// https://leetcode.com/problems/length-of-last-word/


void main(List<String> args) {
  print(lengthOfLastWord("   fly me   to   the moon  "));
}


int lengthOfLastWord(String text){
  while(text[text.length -1] == " "){
    text = text.substring( 0,text.length-1);
  }

  if(text.contains(" ")){
    return text.substring(text.lastIndexOf(" ")).replaceAll(" ", "").length;
  }
  
  return text.length;
}