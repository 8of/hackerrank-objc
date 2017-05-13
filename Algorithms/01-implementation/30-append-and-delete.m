#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSString* s;
    char* s_temp = (char *)malloc(512000 * sizeof(char));
    scanf("%s",s_temp);
    s = [NSString stringWithFormat:@"%s", s_temp];
    NSString* t;
    char* t_temp = (char *)malloc(512000 * sizeof(char));
    scanf("%s",t_temp);
    t = [NSString stringWithFormat:@"%s", t_temp];
    NSInteger k;
    scanf("%li",&k);

    NSInteger lastSameIndex = 0;
    NSString *answer = @"";
    BOOL changed = NO;
    for (int i=0; i<t.length; i++) {
      NSString *tChar = [t substringWithRange:NSMakeRange(i,1)];
      if (i>=s.length) {
        break;
      }
      NSString *sChar = [s substringWithRange:NSMakeRange(i,1)];
      if (![tChar isEqualToString:sChar]) {
        break;
      }
      lastSameIndex = i;
      changed = YES;
    }
    if (!changed) {
      NSInteger diff = t.length + s.length;
      answer = (diff <= k) ? @"Yes" : @"No";
    } else {
      NSInteger toDelete = t.length - lastSameIndex - 1;
      NSInteger toAdd = s.length - lastSameIndex - 1;
      NSInteger diff = toDelete + toAdd;
      if (k < diff) {
        answer = @"No";
      } else if (diff == k || ((diff - k) % 2 == 0)) {
        answer = @"Yes";
      } else if (0 <= k - (NSInteger)s.length - (NSInteger)t.length) {
        answer = @"Yes";
      } else {
        answer = @"No";
      }
    }
    printf("%s", [answer UTF8String]);
  }
  return 0;
}
