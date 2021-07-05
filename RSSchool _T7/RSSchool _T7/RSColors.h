//
//  RSColors.h
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 5.07.21.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, StatusColor) {
    White,
    BlackCoral,
    Green,
    Red,
    Black,
    Blue,

    count //always last element
};

NS_ASSUME_NONNULL_BEGIN

@interface RSColors : NSObject {
    NSArray* statusColors;
}

+(instancetype)sharedInstance;
//- (NSString*)flagNameForStatusColor:(StatusColor)statusColor;
- (UIColor*)colorForStatusColor:(StatusColor)statusColor;


@end

NS_ASSUME_NONNULL_END
