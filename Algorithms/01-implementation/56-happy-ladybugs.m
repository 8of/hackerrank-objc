#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int Q;
    scanf("%i", &Q);
    for (int a0 = 0; a0 < Q; a0++) {
      int n;
      scanf("%i", &n);
      NSString* b;
      char* s_temp = (char *)malloc(10240 * sizeof(char));
      scanf("%s",s_temp);
      b = [NSString stringWithFormat:@"%s", s_temp];

      bool res=1;
      for (unichar i='A'; i<='Z'; i++) {
        int cnt=0;
        for (int j=0; j<n; j++) {
          if([b characterAtIndex:j]==i) cnt++;
        }
        if (cnt==1) {
          res=0;
          break;
        }
      }
      if (res) {
        int cnt_=0;
        for (int i=0; i<n; i++) {
          if ([b characterAtIndex:i]=='_') {
            cnt_++;
          }
        }
        if (cnt_==0) {
          for (int i=1; i<(n-1); i++) {
            if ([b characterAtIndex:i]!=[b characterAtIndex:(i+1)] && [b characterAtIndex:i]!=[b characterAtIndex:(i-1)]) {
              res=0;
              break;
            }
          }
        }
      }
      if (res) {
        printf("YES\n");
      } else {
        printf("NO\n");
      }
    }
  }
  return 0;
}
