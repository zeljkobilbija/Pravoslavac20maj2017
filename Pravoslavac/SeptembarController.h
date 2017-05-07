//
//  SeptembarController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;
@interface SeptembarController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaSeptembar;
@property (nonatomic, strong)NSArray *spisakZitijaZaSeptembar;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;
@end
