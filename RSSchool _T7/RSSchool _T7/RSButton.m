//
//  RSButton.m
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 5.07.21.
//

#import "RSButton.h"
#import "RSColors.h"



@implementation RSButton

- (void) layoutSubviews {
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(50, 10, 100, 25);
    self.imageView.frame = CGRectMake(20, 10, 25, 25);
    
    
}

-(void) awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 10;
    self.layer.borderWidth = 2;
    self.layer.borderColor = [[[RSColors sharedInstance] colorForStatusColor:Blue] CGColor];
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];

    if (highlighted) {
        self.backgroundColor = [[[RSColors sharedInstance] colorForStatusColor:Blue] colorWithAlphaComponent:0.2];
        self.titleLabel.alpha = 0.4;
    } else {
        self.backgroundColor = [[RSColors sharedInstance] colorForStatusColor:White];
        self.titleLabel.alpha = 1;
    }
}

@end
