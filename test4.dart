class Solution {
  String reverseVowels(String s) {
    List<String> charactersToCheck = ['a', 'e', 'i','o','u','A','E','I','O','U'];
    List<String> newReturn =[];
    List<String> result =[];
    List<String> result2 =[];
    for(String character in s.split('')){
        result.add(character);
        for(String toCheck in charactersToCheck){
            if(character.contains(toCheck)){
                newReturn.add(character);
            }
        }
    }
    List<String> setNewReturn = newReturn.toSet().toList();
    print('result: $result');
    print('setNewReturn: $setNewReturn');
    for(int i= 0; i<result.length;i++){
        for(int j =0; j<setNewReturn.length;j++){
            if(result[i]==setNewReturn[j]){
                result[i]=setNewReturn[setNewReturn.length-j-1];
                print(setNewReturn[setNewReturn.length-j-1]);
                break;
            }
        }
    }
    String resultStr= result.join();    
    return resultStr;
  }
}