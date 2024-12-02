import 'dart:math';

class Solution {
  bool isHappy(int n) {
    //요소 중복 확인할 리스트
    List<int> checkContains = [];
    //제곱한 요소 더해서 저장해둘 변수
    int result = 0;
    //처음 검사할 n을 리스트로 만들기
    List<int> numList = createList(n);
    while(result!=1){
        result = 0;
        for(int num in numList){
            result += pow(num,2).toInt();
        }
        if(checkContains.contains(result)){
            return false;
        }
        numList.clear();
        numList = createList(result);
        checkContains.add(result);
    }
    return true;
  }
    List<int> createList(int num){
        return num.toString().split('').map(int.parse).toList();
    }
}