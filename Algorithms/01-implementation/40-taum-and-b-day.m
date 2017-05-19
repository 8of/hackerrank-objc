#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger t;
    scanf("%li",&t);
    for(int a0 = 0; a0 < t; a0++){
      NSInteger b;
      NSInteger w;
      scanf("%li %li",&b,&w);
      NSInteger x;
      NSInteger y;
      NSInteger z;
      scanf("%li %li %li",&x,&y,&z);

      NSInteger answer = 0;

      if (x+z < y) {
        answer = b*x + w*(x+z);
      } else if (y+z < x) {
        answer = b*(y+z) + w*y;
      } else {
        answer = b*x + w*y;
      }

      printf("%li\n", answer);
    }
  }
  return 0;
}
