#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int t;
    scanf("%d", &t);

    while (t--) {
      int n, k;
      scanf("%d %d", &n, &k);

      if (k == 0) {
        for(int i=1; i<=n; i++)
          printf("%d ",i);
        printf("\n");
      } else if (n % (2*k)) {
        printf("-1\n");
      } else {
        int sign = 0;
        for (int i=1; i<=n; i++) {
          sign ? printf("%d ",i-k) : printf("%d ",i+k);
          if(i % k == 0) sign = !sign;
        }
        printf("\n");
      }
    }
  }
  return 0;
}
