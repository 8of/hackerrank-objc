#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    int a[n];
    for(int a_i = 0; a_i < n; a_i++){
      scanf("%i",&a[a_i]);
    }

    int max_count = 0;
    for(int a_i = 0; a_i < n; a_i++){
      int same = 0;
      int diff_count_minus = 0;
      int diff_count_plus = 0;
      for(int a_j = 0; a_j < n; a_j++){
        int diff = a[a_i] - a[a_j];
        if (diff == 1) {
          diff_count_plus++;
        } else if (diff == -1) {
          diff_count_minus++;
        } else if (diff == 0) {
          same++;
        }
      }
      int current_total = same + (diff_count_minus < diff_count_plus ? diff_count_plus : diff_count_minus);
      if (max_count < current_total) {
        max_count = current_total;
      }
    }
    printf("%i", max_count);
  }
  return 0;
}
