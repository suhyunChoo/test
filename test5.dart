class Solution {
  void moveZeroes(List<int> nums) {
    for(int num in nums){
        if(num==0){
            nums.remove(0);
            nums.add(0);
        }
        print(nums.toString());
    }
  }
}