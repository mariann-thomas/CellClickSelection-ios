//
//  displayViewController.m
//  cellClickSelectEx
//
//  Created by Mariann Thomas on 8/27/19.
//  Copyright © 2019 Mariann Thomas. All rights reserved.
//

#import "displayViewController.h"

@interface displayViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation displayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *testCell = [UITableViewCell new];
    testCell.imageView.image = self.obtainedImage;
    testCell.textLabel.text = self.obtainedResult;
    return testCell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
