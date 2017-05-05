#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int t;
    scanf("%i",&t);
    for(int a0 = 0; a0 < t; a0++){
      int n;
      int k;
      scanf("%i %i",&n,&k);
      int a[n];
      int studentsIn = 0;
      for(int a_i = 0; a_i < n; a_i++){
        scanf("%d",&a[a_i]);
      }
      BOOL breaked = NO;
      for(int a_i = 0; a_i < n; a_i++){
        if (a[a_i] <= 0) {
          studentsIn++;
        }
        if (studentsIn >= k) {
          printf("NO\n");
          breaked = YES;
          break;
        }
      }
      if (!breaked) {
        printf("YES\n");
      }
    }
  }
  return 0;
}
