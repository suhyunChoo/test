class Solution {
  int largestAltitude(List<int> gain) {
    //누적고도
    int sum = 0;
    int max = 0;
    for(int i in gain){
        if(sum>max){
            max=sum;
        }
        sum+=i;
    }
    return max;
    
  }
}