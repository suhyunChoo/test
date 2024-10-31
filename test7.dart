import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int maxS = 0;
    int sum = 0;

    if(nums.length==1){
        return nums[0]/k;
    }

    for(int i = 0; i<k;i++){
        sum += nums[i];
    }

    for(int i = 0; i<nums.length-k ; i++){
        sum = sum - nums[i] + nums[k+i];
        maxS = max(maxS, sum);
    }
    return maxS / k;
  }
}