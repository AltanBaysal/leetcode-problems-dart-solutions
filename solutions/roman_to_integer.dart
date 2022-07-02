Map<String,int> romanAndInt = {
  "XII": 12,
  "DCLI": 651,
  "DCLXVI": 666,
  "CXXVII": 127,
  "CCLXXXVII": 287,
  "CXXXV": 135,
  "LXXVI": 76,
  "DCXI": 611,
  "CMLVI": 956,
  "DCCXXVIII": 728,
};

void main(List<String> args) {
  romanAndInt.keys.forEach((element) {
    print(" fonksiyon : ${romanNumberToInt(element)} , excepted : ${romanAndInt[element]}  , ${romanNumberToInt(element) == romanAndInt[element]}");
  });
}

Map<String, int> romanNumbers = {
  "I": 1,
  "V": 5,
  "X": 10,
  "L": 50,
  "C": 100,
  "D": 500,
  "M": 1000,
};

int romanNumberToInt(String romanNumberString) {
  if (romanNumberString.length == 1) {
    return romanNumbers[romanNumberString[0]] ?? double.negativeInfinity.toInt();
  }
   
  else {
    int result = 0;

    int previousNumber =romanNumbers[romanNumberString[0]] ?? double.negativeInfinity.toInt();

    for (int i = 1; i < romanNumberString.length; i++) {
      int currentNumber =romanNumbers[romanNumberString[i]] ?? double.negativeInfinity.toInt();

      if (previousNumber < currentNumber) {
        result -= previousNumber;
      } else {
        result += previousNumber;
      }

      if (i == romanNumberString.length - 1) {
        result += currentNumber;
        break;
      }

      previousNumber = currentNumber;
    }

    return result;
  }
}
