#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    NSMutableArray <NSNumber *> *grades = [@[] mutableCopy];
    NSMutableArray <NSNumber *> *newGrades = [@[] mutableCopy];
    scanf("%i",&n);
    for(int grades_i = 0; grades_i < n; grades_i++){
      NSInteger num = 0;
      scanf("%li",&num);
      [grades addObject:[NSNumber numberWithInteger:num]];
    }
    for (NSNumber *grade in grades) {
      NSNumber *newGrade = [grade copy];
      if (newGrade.integerValue < 38) {

      } else if (newGrade.integerValue % 10 == 3 || newGrade.integerValue % 10 == 4 || newGrade.integerValue % 10 == 4 || newGrade.integerValue % 10 == 8 || newGrade.integerValue % 10 == 9) {
        do {
          newGrade = [NSNumber numberWithInteger:(newGrade.integerValue + 1)];
        } while (newGrade.integerValue % 5 != 0);
      }
      [newGrades addObject:newGrade];
    }
    for (NSNumber *number in newGrades) {
      printf("%li", number.integerValue);
      printf("\n");
    }
  }
  return 0;
}
