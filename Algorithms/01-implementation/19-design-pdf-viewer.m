#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int h[26];
    for(int h_i = 0; h_i < 26; h_i++){
      scanf("%d",&h[h_i]);
    }
    NSString *all = @"abcdefghijklmnopqrstuvwxyz";
    NSString* word;
    char* word_temp = (char *)malloc(512000 * sizeof(char));
    scanf("%s",word_temp);
    word = [NSString stringWithFormat:@"%s", word_temp];

    int maxHeight = 0;
    for (NSInteger i=0; i<word.length; i++) {
      NSString *letter = [word substringWithRange:NSMakeRange(i, 1)];
      NSUInteger heightIndex = [all rangeOfString:letter].location;
      int height = h[heightIndex];
      if (maxHeight < height) {
        maxHeight = height;
      }
    }

    NSInteger answer = word.length*maxHeight;
    printf("%li", answer);
  }
  return 0;
}
