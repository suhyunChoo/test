class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<int> numList = [];
    List<String> resultList = [];
    //배열이 비어있을 경우 
    if(nums.length==0) return resultList;
    //배열이 비어있지 않은 경우
    for(int i = 0 ;i<nums.length;i++){
        //숫자가 연속적일 때
        if(i<nums.length-1 && nums[i]+1==nums[i+1]){
            numList.add(nums[i]);
            numList.add(nums[i+1]);
        }
        //숫자가 연속적이지 않을 때
        else{
            if(numList.length>1){
                resultList.add('${numList[0]}->${numList[numList.length-1]}');
                numList.clear();
            }
            else{
                resultList.add(nums[i].toString());
            }
        }
    }
    return resultList;
  }
}