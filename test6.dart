class Solution {
  bool isSubsequence(String s, String t) {
    List<String> sList = s.split('');
    List<String> tList = t.split('');
    int num = 0;
    for(String sChar in sList){
        if(tList.contains(sChar)==false){
            return false;
        }else{
            num++;
        }
    }
    return num==sList.length;
  }
}