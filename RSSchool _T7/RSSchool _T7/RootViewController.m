//
//  RootViewController.m
//  RSSchool _T7
//
//  Created by Alexandr Zuev on 4.07.21.
//

#import "RootViewController.h"
#import "InputTextField.h"
#import "RSColors.h"
#import "RSButton.h"


@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet InputTextField *usernameTextField;
@property (weak, nonatomic) IBOutlet InputTextField *passwordTextField;
@property (weak, nonatomic) IBOutlet RSButton *authorizeButton;
@property (weak, nonatomic) IBOutlet UIView *securityView;

@end

@implementation RootViewController

NSString *rightUserName = @"username";
NSString *rightPassword = @"password";

- (void)viewDidLoad {
    [super viewDidLoad];

    _titleLabel.text = @"RSSchool";
    _titleLabel.font = [UIFont systemFontOfSize: 36 weight: UIFontWeightBlack];
    
    _usernameTextField.placeholder = @"login";
    _usernameTextField.inputState = ready;
    _usernameTextField.delegate = self;
//    _usernameTextField.textColor = [[RSColors sharedInstance] colorForStatusColor: Red];
    
    _passwordTextField.secureTextEntry = YES;
    _passwordTextField.placeholder = @"password";
    _passwordTextField.inputState = ready;
    _passwordTextField.delegate = self;
//    _passwordTextField.textColor = [[RSColors sharedInstance] colorForStatusColor: Red];
    
    UIImage *image = [UIImage systemImageNamed: @"person"];
    UIImage *image2 = [UIImage systemImageNamed: @"person.fill"];
    [_authorizeButton setTitle:@"authorize" forState: normal];
    [_authorizeButton setImage:image forState: normal];
    [_authorizeButton setImage:image2 forState: UIControlStateHighlighted];
    [_authorizeButton setEnabled: YES];
    
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (IBAction)authorizeTapped:(UIButton *)sender {
    
    if ((![_usernameTextField.text isEqualToString:rightUserName]) || (![_passwordTextField.text isEqualToString:rightPassword])) {
        _usernameTextField.inputState = error;
        _passwordTextField.inputState = error;
    } else if (true) {
        _usernameTextField.inputState = success;
        _passwordTextField.inputState = success;
    }
}

- (void)textFieldDidBeginEditing:(InputTextField *)textField {
    textField.inputState = ready;
}

- (BOOL)textFieldShouldReturn:(InputTextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
