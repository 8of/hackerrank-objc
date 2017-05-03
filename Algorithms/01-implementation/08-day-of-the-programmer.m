#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger year;
    scanf("%li",&year);
    if (year == 1918) {
      printf("26.09.%li", year);
    } else if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) { // leap year
      printf("12.09.%li", year);
    } else { // normal year
      if (year < 1918 && year % 4 == 0) {
        printf("12.09.%li", year);
      } else {
        printf("13.09.%li", year);
      }
    }
  }
  return 0;
}
