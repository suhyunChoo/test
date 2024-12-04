class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String,int> frequency = {};
    for(String s in magazine.split('')){
        frequency[s] = (frequency[s] ?? 0) + 1; 
    }
    for(String s in ransomNote.split('')){
        if((frequency[s] ?? 0 ) ==0 ){
            return false;
        }
        frequency[s] =frequency[s]! - 1;
    }
    return true;

  }
}