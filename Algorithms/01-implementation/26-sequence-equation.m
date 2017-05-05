#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>

int main ( int argc, const char *argv[] ) {
  NSInteger n;
  scanf("%li", &n);
  NSInteger p[n];
  for (NSInteger i=0; i < n; i++) {
    scanf("%li", &p[i]);
  }
  for (NSInteger i=0; i < n; i++) {
    NSInteger x=i+1;
    for (NSInteger j=0; j < n; j++) {
      if (p[j]==x) {
        for (NSInteger k=0; k < n; k++) {
          if (p[k] == j+1) {
            printf("%li\n", k+1);
            break;
          }
        }
        break;
      }
    }
  }
  return 0;
}
