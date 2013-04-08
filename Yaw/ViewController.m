//
//  ViewController.m
//  Yaw
//
//  Created by liux1640 on 4/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h" 

@implementation CMMotionmanagerViewController


- (void)didReceiveMemoryWarning
{
    // Release any cached data, images, etc that aren't in use.
}


#define degrees(x) (180.0 * x / M_PI) 

- (void)viewDidLoad
{
    CMMotionManager *motionmanager = [[CMMotionManager alloc] init];
    motionmanager.deviceMotionUpdateInterval = 1.0/60.0; //60 Hz
    accelerometer.delegate = self; // motionmanager
    [motionmanager startDeviceMotionUpdates];
    
  
   NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/60.0) 
                                            target:self
                                          selector:@selector( readIt )
                                            userInfo:nil
                                                    repeats:YES];   
    
    
    //  CMAttitude *referenceAttitude;
    CMAttitude *attitude;
    
    CMDeviceMotion *motion = motionmanager.deviceMotion;        
    if (!motion) {
        return;
    }
    
    attitude = motion.attitude;
    
    NSLog(@"roll = %f... pitch = %f ... yaw = %f", degrees(attitude.roll), degrees(attitude.pitch), degrees(attitude.yaw));



}


- (void)dealloc{
    [Yawdetect release];
    [Yawmovement release];
 
    accelerometer.delegate = nil;    //motionmanager 
    [motionManager release];
    [super dealloc];
    
}

- (void)viewWillAppear:(BOOL)animated
{

}

- (void)viewDidAppear:(BOOL)animated
{
  
}

- (void)viewWillDisappear:(BOOL)animated
{
	//[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	//[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
