import 'dart:collection';
class RecentCounter {
    Queue<int> queue = Queue<int>(); //필드 선언및 초기화

    RecentCounter(); //생성자
  
    int ping(int t) {
        queue.add(t);
        while(queue.isNotEmpty && queue.first<t-3000){
            queue.removeFirst();
        }
        return queue.length;
    }
}