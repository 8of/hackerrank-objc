#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int d1;
    int m1;
    int y1;
    scanf("%i %i %i",&d1,&m1,&y1);
    int d2;
    int m2;
    int y2;
    scanf("%i %i %i",&d2,&m2,&y2);
    int numberOfYears = y1-y2;
    int numberOfMonths = numberOfYears > 0 ? 12*numberOfYears - (m1-m2) : (m1-m2);
    if (numberOfYears < 0) {
      printf("0");
    } else if (0 < numberOfYears) {
      printf("10000");
    } else if (0 < numberOfMonths) {
      printf("%i", 500*numberOfMonths);
    } else if (m1 == m2 && d2 < d1) {
      printf("%i", 15*(d1-d2));
    } else {
      printf("0");
    }
  }
  return 0;
}
