//
//  ViewController.h
//  Yaw
//
//  Created by liux1640 on 4/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface CMMotionmanagerViewController : UIViewController <UIAccelerometerDelegate>
{
    CMMotionmanagerViewController *motionManager;
    IBOutlet UILabel *Yawdetect;
    IBOutlet UIProgressView *Yawmovement;

    UIAccelerometer *accelerometer; 

}








@end

