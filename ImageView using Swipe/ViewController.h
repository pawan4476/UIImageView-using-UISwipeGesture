//
//  ViewController.h
//  ImageView using Swipe
//
//  Created by Nagam Pawan on 9/20/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>{
    NSArray *images;
    NSArray *textDescription;
}
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UITextView *txtView;


@end

