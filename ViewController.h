//
//  ViewController.h
//  cellClickSelectEx
//
//  Created by Mariann Thomas on 8/27/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSString *rowData, *displayData;
@property (strong, nonatomic) UIImage *rowImage, *displayImage;

@end

