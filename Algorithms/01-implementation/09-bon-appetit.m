#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSInteger k;
    scanf("%li",&k);
    NSInteger dishes[n];
    double totalToCharge = 0.f;
    for(NSInteger i = 0; i < n; i++){
      scanf("%li",&dishes[i]);
      totalToCharge += (i == k) ? 0.f : dishes[i]/2.f;
    }
    double bCharged;
    scanf("%lf",&bCharged);
    double difference = bCharged - totalToCharge;
    if (difference == 0.f) {
      printf("Bon Appetit");
    } else {
      printf("%li", (NSInteger)difference);
    }
  }
  return 0;
}
