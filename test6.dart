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
    for(int i = 0; i<sList.length-1;i++){
        if(tList.indexOf(sList[i])>tList.indexOf(sList[i+1])){
            return false;
        }
    }
    return num==sList.length;
  }
}