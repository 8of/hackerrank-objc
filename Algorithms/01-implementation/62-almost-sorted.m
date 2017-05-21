#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    scanf("%li", &n);
    NSInteger v[n+2];
    for(NSInteger i = 1; i <= n; i++){
      scanf("%li", &v[i]);
    }
    v[0]=-1;
    v[n+1]=2000000;

    NSInteger l = 0;
    NSInteger r = 0;
    NSInteger cnt = 0;
    for (NSInteger i = 0; i <= n; i++) {
      if (v[i] > v[i+1]) {
        if (cnt==0) {
          l=i;
        }
        r=i+1;
        cnt++;
      }
    }
    if (cnt==0) {
      printf("yes");
    } else {
      if (cnt <= 2) {
        if (v[l] < v[r+1] && v[r] > v[l-1]) {
          printf("yes\nswap %li %li", l, r);
        } else {
          printf("no");
        }
      } else {
        bool res=1;
        for (NSInteger i=l; i < r; i++) {
          if(v[i] < v[i+1]) {
            res=0;
            break;
          }
        }
        if (res) {
          printf("yes\nreverse %li %li", l, r);
        } else {
          printf("no");
        }
      }
    }
  }
  return 0;
}
