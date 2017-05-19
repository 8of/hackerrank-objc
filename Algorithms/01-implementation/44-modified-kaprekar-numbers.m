#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger p;
    NSInteger q;
    scanf("%li", &p);
    scanf("%li", &q);
    NSInteger val = 0;
    for(NSInteger i=p;i<=q;i++){
      NSInteger temp=(i*i);
      NSInteger j=0;
      NSInteger sum1=0;
      NSInteger sum2=0;
      NSInteger rem[11];

      while(temp>0){
        rem[j]=temp%10;
        temp/=10;
        j++;
      }
      j=j-1;

      for(NSInteger a=j/2 ; a>=0 ; a--) {
        sum1= (sum1*10)+rem[a];
      }

      for(NSInteger a=j ; a>j/2 ; a--) {
        sum2= (sum2*10)+rem[a];
      }

      if ((sum1+sum2)==i) {
        printf("%ld ",i);
        val++;
      }
    }
    if(val==0)
      printf("INVALID RANGE");
  }
  return 0;
}
