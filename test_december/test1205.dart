class Solution {
  int romanToInt(String s) {
    List<String> list = s.split('');
    int sum = 0;
    Map<String,int>map = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000};
    int temp = map[list[0]]!;
    for(int i =0;i<list.length;i++){
        sum += map[list[i]]!;
        if(temp<map[list[i]]!){
            sum -= temp*2;
        }
        temp = map[list[i]]!;
    }
    return sum;
    
  }
}