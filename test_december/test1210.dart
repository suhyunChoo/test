class Solution {
  int findKthLargest(List<int> nums, int k) {
    nums.sort();
    List<int> newList = nums.reversed.toList();
    return newList[k-1];
  }
}