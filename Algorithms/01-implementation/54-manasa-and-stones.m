#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int n,i,s,a,b,j,t,sum;
    scanf("%d",&n);
    for(i=1;i<=n;i++) {
      scanf("%d\n%d\n%d",&s,&a,&b);
      if(a>b) {
        t=b;
        b=a;
        a=t;
      } else if (a==b) {
        printf("%d",(s-1)*a);
        printf("\n");
        continue;
      }
      for(j=0;j<s;j++) {
        sum=((a*(s-1-j))+(b*j));
        printf("%d ",sum);
      }
      printf("\n");
    }
  }
  return 0;
}
