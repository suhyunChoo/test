class Solution {
  String reverseWords(String s) {
    String words = s.trim().replaceAll(RegExp(r'\s+'), ' ').split(' ').reversed.join(' ');
    return words;
  }
}