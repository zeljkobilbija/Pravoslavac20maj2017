//
//  CetvrtiTabViewController.h
//  Pravoslavac
//
//  Created by Bilbija Zeljko on 17/07/13.
//  Copyright (c) 2013 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;

@interface CetvrtiTabViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, retain)IBOutlet UITableView *tv;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;
@end
