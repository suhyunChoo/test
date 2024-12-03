class Solution {
  bool isPalindrome(String s) {
    String str = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();;
    List<String> strList = str.split('');
    int first = 0;
    int last = strList.length-1;
    if(strList.length==0){
        return true;
    }
    while(first<last){
        if(strList[first]==strList[last]){
            first++;
            last--;
        }
        else{
            return false;
        }
    }
    return true;
    }
}