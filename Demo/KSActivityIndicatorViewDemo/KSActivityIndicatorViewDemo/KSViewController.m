//
//  KSViewController.m
//  KSActivityIndicatorViewDemo
//
//  Created by Mike on 2014-06-16.
//  Copyright (c) 2014 Mike. All rights reserved.
//

#import "KSViewController.h"
#import "KSActivityIndicatorView.h"

@interface KSViewController ()
@property (weak, nonatomic) IBOutlet UIView *activityParentView;
@property (strong, nonatomic) KSActivityIndicatorView *activityIndicator;
@end

@implementation KSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray* images = [[NSMutableArray alloc] init];
    for(int i=0;i<60;i++) {
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"loader%05d",i]]];
    }
    
    // this animation is 60 images at 60fps, so the duration should be 1.0f seconds
    self.activityIndicator = [[KSActivityIndicatorView alloc] initWithImageArray:images andDuration:1.0f];
    [self.activityParentView addSubview:self.activityIndicator];
    self.activityIndicator.tintColor = [UIColor clearColor];
    [self.activityIndicator startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)redAnimation:(id)sender {
    self.activityIndicator.tintColor = [UIColor redColor];
}

- (IBAction)blueAnimation:(id)sender {
    self.activityIndicator.tintColor = [UIColor blueColor];
}

- (IBAction)noColorAnimation:(id)sender {
    self.activityIndicator.tintColor = [UIColor blackColor];
}

@end
