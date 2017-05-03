#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSString* time;
    char* time_temp = (char *)malloc(10240 * sizeof(char));
    scanf("%s",time_temp);
    time = [NSString stringWithFormat:@"%s", time_temp];
    NSMutableArray <NSString *> *timeArr = [[time componentsSeparatedByString:@":"] mutableCopy];
    if ([timeArr.lastObject hasSuffix:@"AM"]) {
      timeArr[timeArr.count-1] = [timeArr.lastObject stringByReplacingOccurrencesOfString:@"AM"
                                                                               withString:@""];
      if (timeArr.firstObject.integerValue == 12) {
        timeArr[0] = @"00";
      }
    } else if ([timeArr.lastObject hasSuffix:@"PM"]) {
      timeArr[timeArr.count-1] = [timeArr.lastObject stringByReplacingOccurrencesOfString:@"PM"
                                                                               withString:@""];
      if (timeArr.firstObject.integerValue == 12) {

      } else {
        NSInteger newHours = timeArr.firstObject.integerValue + 12;
        timeArr[0] = [NSString stringWithFormat:@"%li", newHours];
      }
    }
    printf("%s", [[timeArr componentsJoinedByString:@":"] UTF8String]);
  }
  return 0;
}
