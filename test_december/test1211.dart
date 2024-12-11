import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    int even = 0;
    int odd = 0;
    for(int i =0;i<nums.length;i+=2){
        odd += nums[i];
    }
    for(int i=1;i<nums.length;i+=2){
        even += nums[i];
    }
    return max(even,odd);
  }
}