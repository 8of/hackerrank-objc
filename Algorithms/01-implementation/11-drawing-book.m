#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSInteger p;
    scanf("%li",&p);

    // Check in what part of the book is page
    NSInteger half = n/2;
    NSInteger pages = 0;
    if (p <= half) { // first part
      for (NSInteger i=1; i<= half; i += 2) {
        if (p<=i) {
          break;
        }
        pages++;
      }
    } else { // second part
      if (n%2 == 0) {
        if (p == n) {
          printf("0");
          return 0;
        }
        n = n-3;
        pages++;
      } else {
        n = n-1;
      }
      for (NSInteger i=n; half <= i; i -= 2) {
        if (i<=p) {
          break;
        }
        pages++;
      }

    }
    printf("%li", pages);
  }
  return 0;
}
