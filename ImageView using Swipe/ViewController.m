//
//  ViewController.m
//  ImageView using Swipe
//
//  Created by Nagam Pawan on 9/20/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (assign, nonatomic) int path;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    images = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"as007197_OxYthp2Z[1].jpg"], [UIImage imageNamed:@"therock_iqapu7m6.jpg"],  [UIImage imageNamed:@"kristenste_qLldqsAl[1].jpg"], [UIImage imageNamed:@"spiderman4_9jabsrep.jpg"], [UIImage imageNamed:@"Twilight.jpg"], nil];
    textDescription = [[NSArray alloc]initWithObjects:@"Salena Gomez", @"The rock", @"Kristen Steewart", @"Spiderman", @"Twilight", nil];

    _txtView.text = @" ";
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rightSwipe:(id)sender {
     self.img.image = [images objectAtIndex:_path];
    self.txtView.text = [textDescription objectAtIndex:_path];
    _path++;
           if (self.path == ([images count] )) {
               _path = 0;
           }
}

//    int image = rand() %5;
//    switch (image) {
//        case 0:
//            _img.image = [UIImage imageNamed:@"as007197_OxYthp2Z[1].jpg"];
//            break;
//            case 1:
//            _img.image = [UIImage imageNamed:@"therock_iqapu7m6.jpg"];
//            break;
//            case 2:
//            _img.image = [UIImage imageNamed:@"kristenste_qLldqsAl[1].jpg"];
//            break;
//            case 3:
//            _img.image = [UIImage imageNamed:@"spiderman4_9jabsrep.jpg"];
//            break;
//            case 4:
//            _img.image = [UIImage imageNamed:@"Twilight.jpg"];
//            break;
//        default:
//            break;
//    }


    
//}



- (IBAction)leftSwipe:(id)sender {
    if (self.path == ([images count] )) {
        _path = 0;
    }
        self.img.image = [images objectAtIndex:_path];
    self.txtView.text = [textDescription objectAtIndex:_path];
       _path++;
    


}


@end
