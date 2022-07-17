
// https://leetcode.com/problems/single-number/

void main(List<String> args) {
  print(singleNumber([4,1,2,1,2]));
}

int singleNumber(List<int> nums) {
  if (nums.length == 1) return nums.last;

  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    result ^= nums[i];
  }
  return result;
}
