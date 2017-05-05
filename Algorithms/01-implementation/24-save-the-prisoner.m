#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger T;
    scanf("%li",&T);
    for (int i=0; i<T; i++) {
      NSInteger N;
      NSInteger M;
      NSInteger S;
      scanf("%li %li %li",&N, &M, &S);
      NSInteger answer = (S+M-1)%N;
      if (answer == 0) {
        answer = N;
      }
      printf("%li\n", answer);
    }
  }
  return 0;
}
