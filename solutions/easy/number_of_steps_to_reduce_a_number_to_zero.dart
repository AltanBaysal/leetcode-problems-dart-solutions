
// https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/


void main(List<String> args) {
  
  int num = 23;

  print(numberOfSteps(num));
  print(numberOfStepsV2(num));
  print(numberOfStepsV3(num));
}



//! try to get rid of Converts
//! üstüne biraz daha düşün
int numberOfSteps(int num){
  String binary = num.toRadixString(2);
  return binary.length + binary.replaceAll("0", "").length -1;
}

int numberOfStepsV2(int num) {
  if (num % 2 == 1) {
    return numberOfStepsV2(num - 1) + 1;
  }
  if (num == 0) {
    return 0;
  }
  return numberOfStepsV2((num ~/ 2)) + 1;
}

int numberOfStepsV3(int num){
  int numSteps = 0;

  while(num != 0){
    numSteps++;
    if(num % 2 == 1){
      num--;
    }
    else{
      num ~/= 2;
    }
  }

  return numSteps;
}
