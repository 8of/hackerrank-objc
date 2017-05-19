#import <Foundation/Foundation.h>

void sort(char *str, NSInteger x, NSInteger y){
  for(NSInteger i=x;i<=y;i++){
    char min = str[i];
    NSInteger min_i = i;
    for(NSInteger j=i;j<=y;j++){
      if(min>str[j]){
        min=str[j];
        min_i = j;
      }

    }
    char ch = str[min_i];
    str[min_i]=str[i];
    str[i] = ch;
  }
}
void lexically_greater(char *str){
  NSInteger i = strlen(str)-2;
  while(i>=0 && str[i+1]<=str[i]){
    i--;
  }
  if(i<0){
    printf("no answer\n");
    return;
  }
  NSInteger ch_i = i;
  for(NSInteger j=i+1;j<strlen(str);j++){
    if(str[j]>str[i] && str[j]<=str[i+1]){
      ch_i = j;
    }
  }
  char ch = str[i];
  str[i]=str[ch_i];
  str[ch_i]=ch;
  sort(str, i+1, strlen(str)-1);
  printf("%s\n", str);
}

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int t;
    scanf("%d", &t);
    for(int i=0;i<t;i++){
      char *str=malloc(sizeof(char)*100);
      scanf("%s", str);
      lexically_greater(str);
    }
  }
  return 0;
}
