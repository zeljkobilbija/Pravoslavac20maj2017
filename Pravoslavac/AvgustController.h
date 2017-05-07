//
//  AvgustController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;
@interface AvgustController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaAvgust;
@property (nonatomic, strong)NSArray *spisakZitijaZaAvgust;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;

@end
