String gcdOfStrings(String str1, String str2) {
  // 두 문자열이 결합된 형태가 서로 같지 않으면 공통 부분이 없음
  if (str1 + str2 != str2 + str1) {
    return '';
  }

  // 두 문자열의 길이를 구함
  int gcdLength = gcd(str1.length, str2.length);
  return str1.substring(0, gcdLength); // GCD 길이만큼 잘라서 반환
}

// 유클리드 알고리즘을 사용한 GCD 계산
int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  String result = gcdOfStrings("abcabc", "abc");
  print(result);  
}
