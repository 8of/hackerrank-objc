#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    int arr[n];
    int answer = 0;
    for(int arr_i = 0; arr_i < n; arr_i++){
      scanf("%d",&arr[arr_i]);
      answer = answer + arr[arr_i];
    }
    fprintf(stdout, "%i", answer);
  }
  return 0;
}
