//
//  ViewController.m
//  unity-ads-supersonic-ios
//
//  Created by Solomon Li on 8/2/16.
//  Copyright © 2016 Solomon Li. All rights reserved.
//

#import "ViewController.h"
#import "Supersonic/Supersonic.h"
#import "RVDelegate.h"

@interface ViewController ()
@property (nonatomic, strong) NSString* appKey;
@property (nonatomic, strong) NSString* userId;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RVDelegate* rvDelegate = [RVDelegate new];
    _appKey = @"516c10fd";
    _userId = @"customizableUserId";
    [[Supersonic sharedInstance] setRVDelegate:rvDelegate];
    [[Supersonic sharedInstance] initRVWithAppKey:_appKey withUserId:_userId];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAdButtonTapped:(id)sender {
    BOOL rvAvailable = [[Supersonic sharedInstance] isAdAvailable];
    if(rvAvailable){
        [[Supersonic sharedInstance] showRVWithViewController:self];
    }
}

@end
