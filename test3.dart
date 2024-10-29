class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int canplant = 0;
    for(int i = 0; i<flowerbed.length; i++){
        if(flowerbed[i]==0 &&flowerbed[i+1]==0&&flowerbed[i+2]==0){
            canplant++;
        }
    }
    if(canplant >= n){
        return true; 
    }else{
        return false;
    }
    
  }
}