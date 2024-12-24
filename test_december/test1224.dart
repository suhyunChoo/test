class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> result = List.filled(temperatures.length,0);
    for(int i =0;i<temperatures.length;i++){
        int cnt = 0;
        for(int j = i;j<temperatures.length;j++){
            if(temperatures[i]<temperatures[j]&&cnt==0){
                cnt = j-i;
                result[i] = cnt;
            }
        }
    }
    return result;
  }
}