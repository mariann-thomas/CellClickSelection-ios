//
//  ViewController.m
//  cellClickSelectEx
//
//  Created by Mariann Thomas on 8/27/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "ViewController.h"
#import "mainTableViewCell.h"
#import "displayViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray     *tableContents;
@property (strong, nonatomic) NSMutableArray *imageNameArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.estimatedRowHeight = 80.0f;
    UINib *cellNib = [UINib nibWithNibName:@"mainTableViewCell" bundle:[NSBundle bundleForClass:[mainTableViewCell class]]];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"customCell"];
    self.tableContents = @[@"Marketplace", @"Find Friends", @"Groups", @"Videos on Watch", @"Events", @"Memories", @"Saved", @"Pages", @"Gaming", @"Jobs"];
    self.imageNameArray = [NSMutableArray arrayWithArray:@[@"image1", @"image2", @"image3", @"image4", @"image5", @"image6", @"image7", @"image8", @"image9", @"image10",]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Default is 1 if not implemented
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    return self.tableContents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        mainTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
        return customCell;
    }
    UITableViewCell *testCell = [UITableViewCell new];
    testCell = [tableView dequeueReusableCellWithIdentifier:@"testCell"];
    testCell.imageView.image = [UIImage imageNamed:self.imageNameArray[indexPath.row]];
    testCell.textLabel.text = [self.tableContents objectAtIndex:indexPath.row];
    return testCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        //self.rowData = self.tableContents[indexPath.row];
        //self.rowImage = [UIImage imageNamed:self.imageNameArray[indexPath.row]];
        [self performSegueWithIdentifier:@"firstVCSegue" sender:indexPath];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass:[NSIndexPath class]]) {
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        if ([segue.destinationViewController isKindOfClass:[displayViewController class]]) {
            //self.displayData = [[NSString alloc] initWithFormat:@"%@", self.rowData];
            //self.displayImage = self.rowImage;
            displayViewController *displayViewController = segue.destinationViewController;
            displayViewController.obtainedResult = self.tableContents[indexPath.row];
            displayViewController.obtainedImage = [UIImage imageNamed:self.imageNameArray[indexPath.row]];
        }
    }
    
    
}
@end
