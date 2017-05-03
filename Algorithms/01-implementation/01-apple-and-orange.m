#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger answer1 = 0;
    NSInteger answer2 = 0;
    int s;
    int t;
    scanf("%i %i",&s,&t);
    int a;
    int b;
    scanf("%i %i",&a,&b);
    int m;
    int n;
    scanf("%i %i",&m,&n);
    int apple[m];
    for(int apple_i = 0; apple_i < m; apple_i++){
      scanf("%d",&apple[apple_i]);
      int fruitCoord = a + apple[apple_i];
      if (s <= fruitCoord && fruitCoord <= t) {
        answer1 = answer1 + 1;
      }
    }
    int orange[n];
    for(int orange_i = 0; orange_i < n; orange_i++){
      scanf("%d",&orange[orange_i]);
      int fruitCoord = b + orange[orange_i];
      if (s <= fruitCoord && fruitCoord <= t) {
        answer2 = answer2 + 1;
      }
    }
    printf("%li", answer1);
    printf("\n");
    printf("%li", answer2);
  }
  return 0;
}
