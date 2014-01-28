//
//  DetailViewController.h
//  RenDemo
//
//  Created by Kevin Y. Kim on 1/27/14.
//  Copyright (c) 2014 kykim, inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
