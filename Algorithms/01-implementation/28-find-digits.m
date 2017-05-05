#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger t;
    scanf("%li",&t);
    for (NSInteger a0 = 0; a0 < t; a0++) {
      NSInteger n;
      scanf("%li",&n);
      NSString *string = [[NSString alloc] initWithFormat:@"%li", n];
      NSMutableDictionary <NSString *, NSNumber *> *dict = [@{} mutableCopy];
      for (NSInteger i=0; i<string.length; i++) {
        NSString *character = [string substringWithRange:NSMakeRange(i, 1)];
        if ([character isEqualToString:@"0"]) {
          continue;
        }
        if (![dict objectForKey:character]) {
          dict[character] = [NSNumber numberWithInteger:0];
        }
        NSNumber *prev = dict[character];
        prev = [NSNumber numberWithInteger:(prev.integerValue+1)];
        dict[character] = prev;
      }
      NSInteger answer = 0;
      for (NSString *obj in dict) {
        if (n % [obj integerValue] == 0) {
          answer += dict[obj].integerValue;
        }
      }
      printf("%li\n", answer);
    }
  }
  return 0;
}
