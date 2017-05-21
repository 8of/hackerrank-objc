#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int n;
    int k;
    scanf("%i %i",&n,&k);
    int answer = 0;
    int currentPage = 0;
    for (int i=0; i<n; i++) {
      int input;
      scanf("%i", &input);
      int plusPages = (int)ceilf((float)input/(float)k);
      int startPage = currentPage + 1;
      int finishPage = currentPage + plusPages;
      int now = 0;
      do {
        if (now!=0 && now%k == 0) {
          startPage++;
        }
        now++;
        if (startPage == now) {
          answer++;
        }
      } while(now<input);
      currentPage = finishPage;
    }
    printf("%i\n", answer);
  }
  return 0;
}
