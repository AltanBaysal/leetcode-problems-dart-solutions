
// https://leetcode.com/problems/search-insert-position/

void main(List<String> args) {
  print(searchInsert(nums, 4));
}

List<int> nums = [1,3,5,6];

int searchInsert(List<int> nums, int target) {
  int r = nums.length-1;
  int l = 0;
  late int i;

  while (l<r) {
    i = l+(r-l)~/2;
    if(nums[i] == target) return i;

    else if(nums[i] > target){
      r = i;
    }
    else{
      l = i+1;
    }
  }

  return nums[l] < target ? l + 1: l;
}
