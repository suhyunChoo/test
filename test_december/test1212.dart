class Solution {
  bool canJump(List<int> nums) {
    int temp = nums[0];
    if(nums.length==1) return true;
    
    for(int i = 0; i<nums.length;i++){
        if(i > temp){
            return false;
        }
        temp += nums[temp];
        if(temp+nums[temp]>=nums[nums.length-1]){
            return true;
        }

    }
    return false;
  }
}