#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger N;
    NSInteger M;
    scanf("%li %li", &N, &M);
    NSString* topic[N];
    NSInteger maxCount = 0;
    NSInteger maxTeams = 1;
    for (NSInteger topic_i = 0; topic_i < N; topic_i++){
      char* topic_temp = (char *)malloc(10240 * sizeof(char));
      scanf("%s",topic_temp);
      NSString *fullString = [NSString stringWithFormat:@"%s", topic_temp];
      topic[topic_i] = fullString;
      if (topic_i == 0) {
        continue;
      }
      for (NSInteger i = 0; i < topic_i; i++) {
        NSInteger currentCount = 0;
        for (NSInteger k = 0; k < M; k++) {
          unichar chI = [topic[i] characterAtIndex:k];
          unichar chJ = [fullString characterAtIndex:k];
          unichar chBoth = chI | chJ;
          if (chBoth == 49) {
            currentCount++;
            if (maxCount == currentCount) {
              maxTeams++;
            } else if (maxCount < currentCount) {
              maxCount = currentCount;
              maxTeams = 1;
            }
          }
        }
      }
    }
    printf("%li\n", maxCount);
    printf("%li", maxTeams);
  }
  return 0;
}
