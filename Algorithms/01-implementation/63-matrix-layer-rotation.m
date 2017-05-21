#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger rows;
    NSInteger cols;
    NSInteger rot;
    scanf("%li %li %li",&rows,&cols,&rot);
    NSInteger arr[rows][cols];
    NSInteger result[rows][cols];
    for (NSInteger r = 0; r < rows; r++) {
      for (NSInteger c = 0; c < cols; c++) {
        scanf("%li", &arr[r][c]);
      }
    }

    rows--;
    cols--;
    for (NSInteger r = 0; r <= rows; r++) {
      for (NSInteger c = 0; c <= cols; c++) {
        NSInteger x = r < rows - r ? r : rows - r;
        NSInteger y = c < cols - c ? c : cols - c;
        NSInteger min = x < y ? x : y;
        NSInteger maxRow = rows - min;
        NSInteger maxCol = cols - min;
        NSInteger parameter = (maxRow + maxCol) * 2 - min * 4;

        NSInteger row = r;
        NSInteger col = c;
        for (NSInteger a = 0; a < rot%parameter; a++) {
          if (col == min && row < maxRow) {
            row++;
          }
          else if (row == maxRow && col < maxCol) {
            col++;
          }
          else if (row > min && col == maxCol) {
            row--;
          }
          else if (row == min && col > min) {
            col--;
          }
        }
        result[row][col] = arr[r][c];
      }
    }

    for (NSInteger r = 0; r <= rows; r++) {
      for (NSInteger c = 0; c <= cols; c++) {
        printf("%li ", result[r][c]);
      }
      printf("\n");
    }
  }
  return 0;
}
