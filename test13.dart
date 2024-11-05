class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int,int> frequency = {};
    for (int num in arr){
        frequency[num] = (frequency[num] ?? 0) + 1;
    }
    List<int> frequencies = frequency.values.toList();

    return frequencies.length == frequencies.toSet().length;
  }
}