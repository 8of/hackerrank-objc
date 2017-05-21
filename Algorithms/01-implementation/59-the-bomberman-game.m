#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int r, c ,n;
    scanf("%d %d %d \n", &r, &c, &n);

    char initial_map[r][c+1]; // store n = 0, 1
    char n_3_map[r][c]; // store n = 3, 7, 11 ...
    int num_map[r][c]; // store n = 5, 9, 13 ...
    int i, j;

    for(i=0; i<r; i++){
      for(j=0; j<=c; j++)
        scanf("%c", &initial_map[i][j]);
    } // input n = 0

    for(i=0; i<r; i++){
      for(j=0; j<c; j++)
        num_map[i][j] = (initial_map[i][j] == '.' ? 3 : 1);
    } // do the step - 3 & 'char' transform into 'int' & calculate n = 2

    for(int ni=3; ni<=5; ni++){
      if(ni == 4){
        for(i=0; i<r; i++){
          for(j=0; j<c; j++)
            num_map[i][j] = (num_map[i][j] == 2 ? 1 : 3);
        }
      } // do the step - 3 & calculate n = 4
      else{
        for(i=0; i<r; i++){
          for(j=0; j<c; j++){
            if(num_map[i][j] == 1){
              if(i-1 >= 0 && num_map[i-1][j] != 1)
                num_map[i-1][j] = 0;
              if(i+1 <  r && num_map[i+1][j] != 1)
                num_map[i+1][j] = 0;
              if(j-1 >= 0 && num_map[i][j-1] != 1)
                num_map[i][j-1] = 0;
              if(j+1 <  c && num_map[i][j+1] != 1)
                num_map[i][j+1] = 0;
              num_map[i][j] = 0;
            } // do the step - 4 & a bomb detonate
          }     // ps.1: a bomb can't detonate in another bomb
        }         // ps.2: a bomb can't detonate out of range
        for(i=0; i<r; i++){
          for(j=0; j<c; j++)
            if(num_map[i][j]) num_map[i][j] = 2;
        }
      } // calculate n = 3, calculate n = 5

      if(ni == 3){
        for(i=0; i<r; i++){
          for(j=0; j<c; j++){
            n_3_map[i][j] = (num_map[i][j] == 2 ? 'O' : '.');
          }
        }
      } // 'int' transform into 'char' & store "n = 3" result
    }
    // -------- upside "calculate" ----------- under "ouput" --------- //
    if(n <= 1){
      for(i=0; i<r; i++){
        for(j=0; j<c; j++)
          printf("%c", initial_map[i][j]);
        printf("\n");
      }
    } // ouput n = 0, ouput n = 1
    else if(n % 2 == 0){
      for(i=0; i<r; i++){
        for(j=0; j<c; j++)
          printf("O");
        printf("\n");
      }
    } // ouput n = 2, 4, 6 ...
    else if((n % 4) - 3 == 0){
      for(i=0; i<r; i++){
        for(j=0; j<c; j++)
          printf("%c", n_3_map[i][j]);
        printf("\n");
      }
    } // ouput n = 3, 7, 11 ...
    else{
      for(i=0; i<r; i++){
        for(j=0; j<c; j++)
          num_map[i][j] == 2 ? printf("O") : printf(".");
        printf("\n");
      }
    } // 'int' transform into 'char' & ouput n = 5, 9, 13 ...
  }
  return 0;
}
