#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSString* s;
    char* s_temp = (char *)malloc(512000 * sizeof(char));
    scanf("%s",s_temp);
    s = [NSString stringWithFormat:@"%s", s_temp];
    NSInteger n;
    scanf("%li",&n);
    NSInteger countInOne = 0;
    NSInteger maxForOneTime = n <= s.length ? n : s.length;
    for (NSInteger i=0; i<maxForOneTime; i++) {
      NSString *letter = [s substringWithRange:NSMakeRange(i, 1)];
      if ([letter isEqualToString:@"a"]) {
        countInOne++;
      }
    }
    if (n <= maxForOneTime) {
      printf("%li", countInOne);
      return 0;
    }
    NSInteger count = n/s.length;
    NSInteger answer = countInOne*count;
    for (NSInteger i=0; i<(n-count*s.length); i++) {
      NSString *letter = [s substringWithRange:NSMakeRange(i, 1)];
      if ([letter isEqualToString:@"a"]) {
        answer++;
      }
    }
    printf("%li", answer);
  }
  return 0;
}
