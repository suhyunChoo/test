class Solution {
  bool increasingTriplet(List<int> nums) {
        int first = nums[0];
        int changeFirst = 0;
        for(int i =0;i<nums.length;i++){
            if(first<nums[i]){
                first=nums[i];
                changeFirst++;
            }
            if(changeFirst==2){
                return true;
            }
        }
        return false;
    }
}