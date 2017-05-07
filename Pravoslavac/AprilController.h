//
//  AprilController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;

@interface AprilController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaApril;
@property (nonatomic, strong)NSArray *spisakZitijaZaApril;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;


@end
