//
//  QBaseDemoViewController.m
//  QBaseViewControllerTest
//
//  Created by andy on 10/11/14.
//  Copyright (c) 2014 Andy Jin. All rights reserved.
//

#import "QBaseDemoViewController.h"

@interface QBaseDemoViewController ()
{
    UITextView *_tv;
}
@end

@implementation QBaseDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _tv = [[UITextView alloc] initWithFrame:CGRectMake(20, 100, 280, 50)];
    _tv.layer.borderColor = [[UIColor blackColor] CGColor];
    _tv.layer.borderWidth = 1.0f;
    
    [self.view addSubview:_tv];
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_tv resignFirstResponder];
}

- (void)keyboardHeightCallback:(CGFloat)keyboardHeight
{
    NSLog(@"%f", keyboardHeight);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
