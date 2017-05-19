#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSString* s;
    char* s_temp = (char *)malloc(10240 * sizeof(char));
    scanf("%s",s_temp);
    s = [NSString stringWithFormat:@"%s", s_temp];

    // Find out how many rows and columns
    NSInteger rowsCount = 1;
    NSInteger colsCount = 1;
    NSInteger minCount = 82;
    for (NSInteger i=1; i<=9; i++) {
      for (NSInteger j=1; j<=9; j++) {
        NSInteger L = s.length;
        NSInteger floorL = floor(sqrt(L));
        NSInteger ceilL = ceil(sqrt(L));
        if (floorL <= i && i <=j && j <= ceilL && i*j >= s.length) {
          if (i*j <= minCount) {
            minCount = i*j;
            rowsCount = i;
            colsCount = j;
          }
        }
      }
    }

    NSString *m[rowsCount][colsCount];
    NSInteger index = 0;
    for (NSInteger i=0; i<rowsCount; i++) {
      for (NSInteger j=0; j<colsCount; j++) {
        NSString *letter;
        if (index < s.length) {
          letter = [s substringWithRange:NSMakeRange(index, 1)];
        } else {
          letter = @"";
        }
        m[i][j] = letter;
        index++;
      }
    }

    NSMutableString *answer = [@"" mutableCopy];
    for (NSInteger j=0; j<colsCount; j++) {
      for (NSInteger i=0; i<rowsCount; i++) {
        NSString *letter = m[i][j];
        [answer appendString:letter];

      }
      if (j != colsCount-1) {
        [answer appendString:@" "];
      }
    }
    printf("%s", [answer UTF8String]);
  }
  return 0;
}
