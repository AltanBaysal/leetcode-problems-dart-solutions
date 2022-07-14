
// https://leetcode.com/problems/two-sum/ 

void main(List<String> args) {
  print(twoSum([1,2,6,4,7,9], 16));
}

List<int> twoSum(List<int> nums,int target){
  Map<int,int> map = {};

  for(int i = 0; i< nums.length ; i++){
    final int other = target - nums[i];
    
    if(map.containsKey(other)){
      return <int>[map[other]!,i];
    }

    map[nums[i]] = i;
  }

  return [];
}