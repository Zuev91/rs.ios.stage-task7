//
//  RSColors.m
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 5.07.21.
//

#import "RSColors.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation RSColors

//+(instancetype)sharedInstance;
//- (NSString*)flagNameForStatusColor:(StatusColor)statusColor;
//- (UIColor*)colorForStatusColor:(StatusColor)statusColor;

+(instancetype)sharedInstance {
    static RSColors* statusColorInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        statusColorInstance = [[self alloc] initTheSharedInstance];
    });
    return statusColorInstance;
}

-(instancetype)initTheSharedInstance {
    self = [super init];
    if (self) {
        // Array of MVColorAndFlagName in same order as StatusColor enum (not including 'None')
        statusColors = @[
            UIColorFromRGB(0xFFFFFF),
            UIColorFromRGB(0x4C5C68),
            UIColorFromRGB(0x91C7B1),
            UIColorFromRGB(0xC20114),
            UIColorFromRGB(0x000000),
            UIColorFromRGB(0x80A4ED),
        ];
    }
    return self;
}

- (UIColor *)colorForStatusColor:(StatusColor)statusColor {
    if (statusColor >= 0 && statusColor < count)
        return [statusColors objectAtIndex:statusColor];
    else
        return [UIColor clearColor];
}

@end
