#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger T;
    scanf("%li",&T);
    for (NSInteger t=0; t<T; t++) {
      NSInteger A;
      NSInteger B;
      scanf("%li",&A);
      scanf("%li",&B);
      NSInteger minSquare = (NSInteger)ceil(sqrtl(A));
      NSInteger maxSquare = (NSInteger)floor(sqrtl(B));
      // All possible perfect suares will be between theese two
      NSInteger answer = maxSquare - minSquare + 1; // + 1 because we need to count first one twoo
      printf("%li\n", answer);
    }
  }
  return 0;
}
