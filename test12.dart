class Solution {
  int pivotIndex(List<int> nums) {
    int left = 0;
    int right = 0;
    int pIndex = -1;
    List<int> leftList =[];
    List<int> rightList =List.from(nums);
    for(int i = 0 ;i<nums.length;i++){
        left = leftList.fold(0,(a,b)=>a+b);
        rightList.remove(nums[i]);
        right = rightList.fold(0,(a,b)=>a+b);
        leftList.add(nums[i]);
        if(left==right){
            pIndex=i;
        }
    }
    return pIndex;
  }
}