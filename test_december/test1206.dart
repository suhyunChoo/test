class Solution {
  int lengthOfLongestSubstring(String s) {
    
    List<String> sList = s.split('');
    List<String> tList = [sList[0]];
    String temp = sList[0];

    for(int i = 1; i<sList.length-1;i++){
        if(sList[i] != temp){
            if(tList.contains(sList[i]) == false){
                tList.add(sList[i]);
            }
        }
        else{
            tList.clear();
            tList.add(sList[i]);
        }
        
        temp = sList[i];

    }
    return tList.length;

    
  }
}