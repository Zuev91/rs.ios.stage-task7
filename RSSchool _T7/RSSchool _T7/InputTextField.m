//
//  InputTextField.m
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 4.07.21.
//

#import "InputTextField.h"
#import "RSColors.h"

@implementation InputTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.delegate = self;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    self.layer.borderWidth = 1.5;
//    self.content
}

- (void)setInputState:(InputState)inputState {
    switch (inputState) {
        case ready:
            self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:BlackCoral] CGColor];
            self.alpha = 1;
            self.tintColor = [[RSColors sharedInstance] colorForStatusColor:BlackCoral];
            break;
        case success:
            // TODO
            self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:Green] CGColor];
            self.alpha = 0.5;
            self.tintColor = [[RSColors sharedInstance] colorForStatusColor:Green];
            break;
        case error:
            self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:Red] CGColor];
            self.alpha = 1;
            self.tintColor = [[RSColors sharedInstance] colorForStatusColor:Red];
            break;
        default:
            break;
    }
}

// placeholder position
- (CGRect)textRectForBounds:(CGRect)bounds {
     return CGRectInset(bounds, 10, 0);
}

// text position
- (CGRect)editingRectForBounds:(CGRect)bounds {
     return CGRectInset(bounds, 10, 0);
}


@end
