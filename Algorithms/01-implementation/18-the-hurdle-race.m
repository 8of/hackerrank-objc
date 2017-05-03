#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    int k;
    scanf("%i %i",&n,&k);
    int height[n];
    int beverages = 0;
    for(int height_i = 0; height_i < n; height_i++){
      scanf("%d",&height[height_i]);
      if (k < height[height_i]) {
        beverages += height[height_i] - k;
        k = height[height_i];
      }
    }
    printf("%i", beverages);
  }
  return 0;
}
