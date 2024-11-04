class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<int> nums1List = [];
    List<int> nums2List = [];
    for(int i in nums1.toSet().toList()){
        if(nums2.contains(i)==false){
            nums1List.add(i);
        }
    }
    for(int i in nums2.toSet().toList()){
        if(nums1.contains(i)==false){
            nums2List.add(i);
        }
    }
    List<List<int>> comList = [nums1List,nums2List];
    return comList;
    
  }
}