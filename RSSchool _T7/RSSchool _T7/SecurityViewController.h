//
//  SecurityViewController.h
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 4.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    ready,
    success,
    error,
} SecurityState;

@interface SecurityViewController : UIViewController

@end

NS_ASSUME_NONNULL_END
