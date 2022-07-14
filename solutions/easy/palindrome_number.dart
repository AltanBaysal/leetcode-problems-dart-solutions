
// https://leetcode.com/problems/palindrome-number/

void main(List<String> args) {
  print(isPalindrome(12121));
}

bool isPalindrome(int number) {
  int reverseNumber = 0;

  while(number > reverseNumber){
    reverseNumber = reverseNumber*10 + number%10;
    number = (number/10).floor();  
  }

  return (number == reverseNumber || number == (reverseNumber/10).floor());
}

