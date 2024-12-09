class Solution {
  int removeDuplicates(List<int> nums) {
    Map<int,int>map ={};
    for(int i = nums.length - 1; i >= 0; i--){
        map[nums[i]] = (map[nums[i]] ?? 0) + 1;

        if((map[nums[i]] ?? 0) > 2){
            nums.remove(nums[i]);
            map[nums[i]] = (map[nums[i]] ?? 0) -1;
        }
    }

    return nums.length;
    
  }
}