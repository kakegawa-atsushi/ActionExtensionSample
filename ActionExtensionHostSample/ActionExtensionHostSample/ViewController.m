//
//  ViewController.m
//  ActionExtensionHostSample
//
//  Created by KAKEGAWA Atsushi on 2014/09/13.
//  Copyright (c) 2014年 KAKEGAWA Atsushi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDidTouch:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://dev.classmethod.jp/"];
    UIActivityViewController *viewController = [[UIActivityViewController alloc] initWithActivityItems:@[url]
                                                                                 applicationActivities:nil];
    
    [viewController setCompletionWithItemsHandler:^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
        if (activityError) {
            NSLog(@"%@", activityError);
            return;
        }
    }];
    
    [self presentViewController:viewController
                       animated:YES
                     completion:nil];
}

@end
