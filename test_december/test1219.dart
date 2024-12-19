class Solution {
  int hIndex(List<int> citations) {
    int temp = 0;
    for (int i = 0; i < citations.length; i++) {
      int cnt = 0;
      for (int j = 0; j < citations.length; j++) {
        if (citations[i] <= citations[j]) {
          cnt++;
        }
        if (citations[i] == cnt && temp < citations[i]) {
          temp = cnt;
        }
      }
    }
    return temp;
  }
}
