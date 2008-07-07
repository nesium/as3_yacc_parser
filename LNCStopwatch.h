#import <Cocoa/Cocoa.h>
#import <mach/mach_time.h>

@interface LNCStopwatch : NSObject
{
    double conversionToSeconds;
    BOOL started;
    uint64_t lastStart;
    uint64_t sum;
}

- (void) reset;
- (void) start;
- (void) stop;
- (double) elapsedSeconds;

@end