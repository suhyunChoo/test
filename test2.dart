void main() {
  List<int> candies = [2, 3, 5, 1, 3];
  List<bool> boolCandies = [false, false, false, false, false];
  int extraCandies = 3;
  int max = 0;

  for (int i = 0; i < candies.length; i++) {
    int totalCandies = candies[i] + extraCandies;
    
    if (totalCandies > max) {
      max = totalCandies;
    }
  }

  for (int i = 0; i < candies.length; i++) {
    if (candies[i] + extraCandies >= max) {
      boolCandies[i] = true;
    }
  }
  print(boolCandies);
}
