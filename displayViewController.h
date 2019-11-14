//
//  displayViewController.h
//  cellClickSelectEx
//
//  Created by Mariann Thomas on 8/27/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface displayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSString *obtainedResult;
@property (strong, nonatomic) UIImage *obtainedImage;
@end

NS_ASSUME_NONNULL_END
