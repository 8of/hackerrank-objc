#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int t;
    scanf("%d",&t);
    for (int a0 = 0; a0 < t; a0++) {
      int R;
      int C;
      scanf("%d %d",&R,&C);
      char* *G = malloc(sizeof(char*) * R);
      for(int G_i = 0; G_i < R; G_i++){
        G[G_i] = (char *)malloc(10240 * sizeof(char));
        scanf("%s",G[G_i]);
      }
      long r;
      long c;
      char left,right,b,br;
      scanf("%ld %ld",&r,&c);
      char* *P = malloc(sizeof(char*) * r);
      for (int P_i = 0; P_i < r; P_i++) {
        P[P_i] = (char *)malloc(10240 * sizeof(char));
        scanf("%s",P[P_i]);
      }
      left=(*(*(P+0)+0)); right=(*(*(P+0)+c-1));b=(*(*(P+r-1)+0));br=(*(*(P+r-1)+c-1));

      long long flag=0,cc=0;
      for (long i=0;i<R;i++) {
        for (long j=0;j<C;j++) {
          if (j+c<=C && i+r<=R) {
            if ( left==(*(*(G+i)+j))  && right==(*(*(G+i)+(j+c-1))) && b==(*(*(G+i+r-1)+j)) &&  br==(*(*(G+i+r-1)+(j+c-1))) ) {
              long co=-1,cl=0;
              for (long k=i;k<i+r;k++) {
                co++;cl=0;

                for (long l=j;l<j+c;l++,cl++) {
                  if ( (*(*(P+co)+cl))==(*(*(G+k)+l)) ) {
                    cc++;
                  } else {
                    cc=0;
                    break;
                  }
                }
              }
              if (cc==r*c) {
                flag=10;
              }
            }
          }
          if(flag==10) {
            break;
          }
        }
        if (flag==10) {
          break;
        }
      }
      if (flag==10) {
        printf("YES\n");
      } else {
        printf("NO\n");
      }
    }
  }
  return 0;
}
