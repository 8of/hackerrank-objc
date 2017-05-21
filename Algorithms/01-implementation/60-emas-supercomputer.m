#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int n, m;
    scanf("%d %d \n", &n, &m);

    char map[n][m+1];
    int i, j;

    for (i=0; i<n; i++) {
      for (j=0; j<=m; j++) {
        scanf("%c", &map[i][j]);
      }
    }

    int count[225] = {0}; // store 'valid pluse' count
    int post[225] = {0}; // store 'valid pluse' center postion
    int num = 0; // count 'valid pluse' number

    for (i=0; i<n; i++) {
      for (j=0; j<m; j++) {
        if (map[i][j] == 'G') {
          int count_num = 1;
          int x = 0;

          for (x=1; x<8; x++) {
            if(i-x <  0 || map[i-x][j] != 'G') break;
            if(i+x >= n || map[i+x][j] != 'G') break;
            if(j-x <  0 || map[i][j-x] != 'G') break;
            if(j+x >= m || map[i][j+x] != 'G') break;

            count_num += 4; // calculate 'valid pluse' count
            count[num] = count_num; // store 'valid pluse' count
            // count_num = 5, 9, 13, 17 ...
            post[num++]  = (i) * n + (j);
            // store 'valid pluse' center postion
          }
        }
      }
    }

    int max = 1; // store answer --> max
    count[num] = 1; // add 1 in the tail

    for (i=0; i<=num-1; i++) {
      for (j=i+1; j<=num; j++) {

        if (count[i] * count[j] > max) {
          int compare_1[count[i]];
          // store 'valid pluse' 1 all postion
          int compare_2[count[j]];
          // store 'valid pluse' 2 all postion

          int x = 1, nx = 1;
          compare_1[0] = post[i];
          while (nx < count[i]) {
            compare_1[nx++] = post[i] - (n * x);
            compare_1[nx++] = post[i] + (n * x);
            compare_1[nx++] = post[i] - x;
            compare_1[nx++] = post[i] + x;
            x++;
          } // calculate 'valid pluse' 1 "all" postion
          // and store in compare_1 array

          int y = 1, ny = 1;
          compare_2[0] = post[j];
          while (ny < count[j]) {
            compare_2[ny++] = post[j] - (n * y);
            compare_2[ny++] = post[j] + (n * y);
            compare_2[ny++] = post[j] - y;
            compare_2[ny++] = post[j] + y;
            y++;
          } // calculate 'valid pluse' 2 "all" postion
          // and store in compare_2 array

          int flag = 1;  // calculate the repeat place
          for (int ni=0; ni<count[i]; ni++) {
            for (int nj=0; nj<count[j]; nj++) {
              if (compare_1[ni] == compare_2[nj]) {
                flag = 0;
                ni = count[i], nj = count[j];
                // jump out of the loop
              }
            }
          }

          if (flag == 1) { // no repeat place
            max = count[i] * count[j];
          }
        }
      }
    }
    
    printf("%d",max);
  }
  return 0;
}
