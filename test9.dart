class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> newList = [];
    for(int i =0; i<nums.length;i++){
        int mul = 1;
        for(int j =0; j<nums.length;j++){
            if(i != j){
                mul *= nums[j];
            }
        }
        newList.add(mul);
    }
    return newList;
  }
}