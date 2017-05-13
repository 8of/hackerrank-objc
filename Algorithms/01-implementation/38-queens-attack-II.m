#import <Foundation/Foundation.h>

static NSString * _Nonnull N = @"N";
static NSString * _Nonnull NE = @"NE";
static NSString * _Nonnull E = @"E";
static NSString * _Nonnull SE = @"SE";
static NSString * _Nonnull S = @"S";
static NSString * _Nonnull SW = @"SW";
static NSString * _Nonnull W = @"W";
static NSString * _Nonnull NW = @"NW";

NSNumber *minDiff(NSInteger currentDiff, NSNumber *prevDiff) {
  NSInteger diff = ABS(currentDiff) - 1;
  return [NSNumber numberWithInteger:MIN(diff, prevDiff.integerValue)];
}

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    NSInteger k;
    scanf("%li %li",&n,&k);
    NSInteger rQueen; // x
    NSInteger cQueen; // y
    scanf("%li %li",&rQueen,&cQueen);
    rQueen--;
    cQueen--;
    NSInteger NEc = (n-1 - cQueen) < (n-1 - rQueen) ? (n-1 - cQueen) : (n-1 - rQueen);
    NSInteger SEc = (n-1 - rQueen) < cQueen ? (n-1 - rQueen) : cQueen;
    NSInteger SWc = rQueen < cQueen ? rQueen : cQueen;
    NSInteger NWc = (n-1 - cQueen) < rQueen ? (n-1 - cQueen) : rQueen;
    NSMutableDictionary <NSString *, NSNumber *> *counts = [@
    {
      N: @(n-1 - cQueen),
      NE: @(NEc),
      E: @(n-1 - rQueen),
      SE: @(SEc),
      S: @(cQueen),
      SW: @(SWc),
      W: @(rQueen),
      NW: @(NWc)
    } mutableCopy];

    for (NSInteger a0 = 0; a0 < k; a0++) {
      NSInteger rObstacle; // x
      NSInteger cObstacle; // y
      scanf("%li %li",&rObstacle,&cObstacle);
      rObstacle--;
      cObstacle--;

      // straight line cases
      if (rObstacle == rQueen) {
        NSInteger diff = cObstacle - cQueen;
        if (diff > 0) {
          counts[N] = minDiff(diff, counts[N]);
        } else {
          counts[S] = minDiff(diff, counts[S]);
        }
        continue;
      } else if (cObstacle == cQueen) {
        NSInteger diff = rObstacle - rQueen;
        if (diff > 0) {
          counts[E] = minDiff(diff, counts[E]);
        } else {
          counts[W] = minDiff(diff, counts[W]);
        }
        continue;
      }

      // diagonal cases

      // - check on the same line?
      NSInteger rDiff = ABS(rObstacle - rQueen);
      NSInteger cDiff = ABS(cObstacle - cQueen);

      if (rDiff != cDiff) {
        continue;
      }

      // - check direction
      NSString *key = @"";
      if (rObstacle < rQueen) { // ?W
        key = cObstacle < cQueen ? SW : NW;
      } else { // ?E
        key = cObstacle < cQueen ? SE : NE;
      }

      // - change diff for the line
      counts[key] = minDiff(rDiff, counts[key]);
    }
    NSInteger answer = 0;
    for (NSString *key in counts) {
      answer += counts[key].integerValue;
    }
    printf("%li", answer);
  }
  return 0;
}
