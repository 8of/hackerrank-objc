#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger N;
    scanf("%li",&N);
    NSInteger B[N];
    NSInteger sum = 0;
    for(int B_i = 0; B_i < N; B_i++){
      NSInteger input;
      scanf("%li",&input);
      B[B_i] = input;
      sum += input;
    }
    if (sum % 2 == 1) {
      printf("NO");
    } else {
      NSInteger answer = 0;
      for (int i = 0; i < N-1; i++) {
        if (B[i] % 2 == 1) {
          B[i] = B[i] + 1;
          B[i+1] = B[i+1] + 1;
          answer += 2;
        }
      }
      printf("%li", answer);
    }
  }
  return 0;
}
