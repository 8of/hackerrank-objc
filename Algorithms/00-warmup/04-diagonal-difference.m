#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    int a[n][n];
    for(int a_i = 0; a_i < n; a_i++){
      for(int a_j = 0; a_j < n; a_j++){
        scanf("%d",&a[a_i][a_j]);
      }
    }

    int forwardDiagonal = 0;
    int backwardDiagonal = 0;
    for(int i = 0; i < n; i++){
      forwardDiagonal = forwardDiagonal + a[i][i];
      backwardDiagonal = backwardDiagonal + a[n-i-1][i];
    }
    int answer = abs(forwardDiagonal - backwardDiagonal);
    printf("%i", answer);
  }
  return 0;
}
