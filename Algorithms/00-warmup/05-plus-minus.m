#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    int arr[n];
    double doubleN = (double)n;
    double positive_count = 0.;
    double negative_count = 0.;
    double zero_count = 0.;
    for(int arr_i = 0; arr_i < n; arr_i++){
      scanf("%d",&arr[arr_i]);
      if (arr[arr_i] > 0) { // +
        positive_count += 1;
      } else if (arr[arr_i] < 0) { // -
        negative_count += 1;
      } else { // 0
        zero_count += 1;
      }
    }
    printf("%.06f\n", positive_count/doubleN);
    printf("%.06f\n", negative_count/doubleN);
    printf("%.06f\n", zero_count/doubleN);
  }
  return 0;
}
