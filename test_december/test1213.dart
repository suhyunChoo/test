class Solution {
  void rotate(List<int> nums, int k) {
    for(int j = 0;j<k;j++){
        int temp = 0;
        int saved = 0;
        for(int i =0;i<nums.length;i++){
            saved = nums[i];
            nums[i] = temp;
            temp = saved;
        }
        nums[0] = temp;
    }
  }
}