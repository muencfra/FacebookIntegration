//
//  FMFBIFirstViewController.m
//  FacebookIntegration
//
//  Created by Frank Muenchow on 20.12.12.
//  Copyright (c) 2012 Frank Muenchow. All rights reserved.
//

#import "FMFBIFirstViewController.h"

@interface FMFBIFirstViewController ()

@end

@implementation FMFBIFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAllClick:(id)sender {
    
    
    NSString *textToShare = @"Ich bin hier";
    UIImage *imageToShare = [UIImage imageNamed:@"bke_neujahr.png"];
    NSURL *url = [NSURL URLWithString:@"http://www.facebook.com/events/553564364671873/"];
    NSArray *activityItems = [[NSArray alloc]  initWithObjects:textToShare, imageToShare, url, nil];
    
    UIActivity *activity = [[UIActivity alloc] init];
    
    NSArray *applicationActivities = [[NSArray alloc] initWithObjects:activity, nil];
    UIActivityViewController *activityVC =
    [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                      applicationActivities:applicationActivities];
    [self presentViewController:activityVC animated:YES completion:nil];
}




-(IBAction)Twitter:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                
                NSLog(@"ResultCancelled");
                
            } else
                
            {
                NSLog(@"Success");
            }
            
            [controller dismissViewControllerAnimated:YES completion:Nil];
        };
        controller.completionHandler = myBlock;
        
        [controller setInitialText:@"Ich bin hier"];
        [controller addURL:[NSURL URLWithString:@"http://www.facebook.com/events/553564364671873/"]];
        //[controller addImage:[UIImage imageNamed:@"bke_neujahr.png"]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    else{
        
        NSLog(@"UnAvailable");
    }
    
}

-(IBAction)FB:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                
                NSLog(@"ResultCancelled");
                
            } else
                
            {
                NSLog(@"Success");
            }
            
            [controller dismissViewControllerAnimated:YES completion:Nil];
        };
        controller.completionHandler =myBlock;
        
        [controller setInitialText:@"Ich bin hier"];
        [controller addURL:[NSURL URLWithString:@"http://www.facebook.com/events/553564364671873/"]];
        [controller addImage:[UIImage imageNamed:@"fb.png"]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    else{
        
        NSLog(@"UnAvailable");
    }
    
    
}

-(IBAction)facebook:(id)sender{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                
                NSLog(@"Cancelled");
                
            } else
                
            {
                NSLog(@"Done");
            }
            
            [controller dismissViewControllerAnimated:YES completion:Nil];
        };
        controller.completionHandler =myBlock;
        
        [controller setInitialText:@"ich bin hier"];
        [controller addURL:[NSURL URLWithString:@"http://www.facebook.com/events/553564364671873/"]];
        [controller addImage:[UIImage imageNamed:@"fb.png"]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
    else{
        NSLog(@"UnAvailable");
    }
    
}

@end
