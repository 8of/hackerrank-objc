#import <Foundation/Foundation.h>

NSInteger reverse(NSInteger integer) {
  NSInteger current = integer;
  NSInteger reverse = 0;
  while (current != 0) {
    reverse = reverse * 10 + current % 10;
    current /= 10;
  }
  return reverse;
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger i;
    NSInteger j;
    NSInteger k;
    scanf("%li %li %li",&i, &j, &k);
    NSInteger answer = 0;
    for(NSInteger a0 = i; a0 <= j; a0++){
      NSInteger reversed = reverse(a0);
      if (labs(a0-reversed) % k == 0) {
        answer++;
      }
    }
    printf("%li", answer);
  }
  return 0;
}
