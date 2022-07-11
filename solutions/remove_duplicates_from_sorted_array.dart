
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

List<int> mockList = [0,0,1,1,1,2,2,3,3,4];

void main() {
  print(removeDuplicates(mockList));
  print(removeDuplicatesV1(mockList));
}

int removeDuplicates(List<int> list){
  int index = 1;

  for(int i =0; i< list.length -1;i++){

    if(list[i] != list[i+1]){
      list[index++] = list[i+1];
    }
  }

  return index;
}

int removeDuplicatesV1(List<int> list){
  list = list.toSet().toList();
  return list.length;
}
