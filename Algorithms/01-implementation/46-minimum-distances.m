#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n,a[1006],min=1000000;
    scanf("%li",&n);
    for(NSInteger i=0;i<=n-1;i++)
    {
      scanf("%li",&a[i]);
    }
    for(NSInteger i=0;i<=n-1;i++)
    {
      for(NSInteger j=i+1;j<=n-1;j++)
      {
        if(a[i]==a[j])
        {
          NSInteger d=labs(i-j);
          if(d<min)
          {
            min=d;
          }
        }
      }
    }
    if(min==1000000) printf("-1\n");
    else printf("%li",min);
  }
  return 0;
}
