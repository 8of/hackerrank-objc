#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int a0;
    int a1;
    int a2;
    scanf("%i %i %i",&a0,&a1,&a2);
    int b0;
    int b1;
    int b2;
    scanf("%i %i %i",&b0,&b1,&b2);
    // Write Your Code Here
    NSArray <NSNumber*> *A = @[[NSNumber numberWithInt:a0], [NSNumber numberWithInt:a1], [NSNumber numberWithInt:a2]];
    NSArray <NSNumber*> *B = @[[NSNumber numberWithInt:b0], [NSNumber numberWithInt:b1], [NSNumber numberWithInt:b2]];
    int pointsA = 0;
    int pointsB = 0;
    for (int i=0;i<A.count;i++) {

      if (A[i].intValue > B[i].intValue) {
        pointsA = pointsA + 1;
      } else if (A[i].intValue < B[i].intValue) {
        pointsB = pointsB + 1;
      }
    }
    printf("%i %i", pointsA, pointsB);
  }
  return 0;
}
