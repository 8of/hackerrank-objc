#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    int arr[n];
    long sum = 0;
    for(int arr_i = 0; arr_i < n; arr_i++){
      scanf("%d",&arr[arr_i]);
      sum = sum + arr[arr_i];
    }
    printf("%li", sum);
  }
  return 0;
}
