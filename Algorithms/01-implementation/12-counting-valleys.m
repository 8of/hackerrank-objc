#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);

    char word[n];
    NSInteger valleysCount = 0;
    NSInteger currentLevel = 0;
    for(NSInteger i = 0; i < n; i++){
      scanf("%s",&word[i]);
      NSInteger levelChange = word[i] == 'U' ? 1 : -1;
      currentLevel = currentLevel + levelChange;
      if (currentLevel == 0 && levelChange > 0) {
        valleysCount++;
      }
    }
    printf("%li", valleysCount);
  }
  return 0;
}
