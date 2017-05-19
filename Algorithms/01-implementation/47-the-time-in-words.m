#import <Foundation/Foundation.h>

NSString *digitString(int d) {
  NSString *string;
  switch (d) {
    case 1:
      string = @"one";
      break;
    case 2:
      string = @"two";
      break;
    case 3:
      string = @"three";
      break;
    case 4:
      string = @"four";
      break;
    case 5:
      string = @"five";
      break;
    case 6:
      string = @"six";
      break;
    case 7:
      string = @"seven";
      break;
    case 8:
      string = @"eight";
      break;
    case 9:
      string = @"nine";
      break;
    case 10:
      string = @"ten";
      break;
    case 11:
      string = @"eleven";
      break;
    case 12:
      string = @"twelve";
      break;
    case 13:
      string = @"thirteen";
      break;
    case 14:
      string = @"fourteen";
      break;
    case 15:
      string = @"fifteen";
      break;
    case 16:
      string = @"sixteen";
      break;
    case 17:
      string = @"seventeen";
      break;
    case 18:
      string = @"eighteen";
      break;
    case 19:
      string = @"nineteen";
      break;
    default:
      string = @"";
      break;
  }
  return string;
}

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int h;
    scanf("%i",&h);
    int m;
    scanf("%i",&m);

    NSMutableString *answer  = [@"" mutableCopy];

    BOOL toUpHour = 60-m < 30;
    NSString *hours = digitString(toUpHour ? h+1 : h);

    if (m == 0) {
      printf("%s o' clock", [hours UTF8String]);
      return 0;
    } else if (m == 15) {
      printf("quarter past %s", [hours UTF8String]);
      return 0;
    } else if (m == 30) {
      printf("half past %s", [hours UTF8String]);
      return 0;
    } else if (m == 45) {
      printf("quarter to %s", [hours UTF8String]);
      return 0;
    }

    m = toUpHour ? 60-m : m;

    NSString *minutes = m < 20 ? digitString(m) : @"";

    if ([minutes isEqualToString:@""]) {
      minutes = [NSString stringWithFormat:@"twenty %s", [digitString(m%10) UTF8String]];
    }

    NSString *middle = toUpHour ? @"to" : @"past";
    printf("%s minutes %s %s", [minutes UTF8String], [middle UTF8String], [hours UTF8String]);
  }
  return 0;
}
