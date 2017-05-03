#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger s; // money has
    scanf("%li",&s);

    NSInteger n; // number of keboard brands
    scanf("%li",&n);

    NSInteger m; // number of USB drive brands
    scanf("%li",&m);

    NSInteger keyboardPrices[n];
    for (NSInteger i=0; i<n; i++) {
      scanf("%li", &keyboardPrices[i]);
    }

    NSInteger usbPrices[m];
    for (NSInteger i=0; i<m; i++) {
      scanf("%li", &usbPrices[i]);
    }

    NSInteger max = -1;
    for (NSInteger i=0; i<n; i++) {
      for (NSInteger j=0; j<m; j++) {
        NSInteger variantCost = keyboardPrices[i] + usbPrices[j];
        if (variantCost <= s && variantCost > max) {
          max = variantCost;
        }
      }
    }
    printf("%li", max);
  }
  return 0;
}
