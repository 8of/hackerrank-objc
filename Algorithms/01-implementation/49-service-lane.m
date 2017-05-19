#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int n;
    int t;
    scanf("%i %i",&n,&t);
    int width[n];
    for(int width_i = 0; width_i < n; width_i++){
      scanf("%d",&width[width_i]);
    }
    for(int a0 = 0; a0 < t; a0++){
      int i;
      int j;
      scanf("%i %i",&i,&j);
      int answer = 3;
      while (i <= j) {
        if (width[j] < answer) {
          answer = width[j];
          if (answer == 1) {
            break;
          }
        }
        j--;
      }
      printf("%i\n", answer);
    }
    }
  }
  return 0;
}
