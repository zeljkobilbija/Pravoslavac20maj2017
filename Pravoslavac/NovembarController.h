//
//  NovembarController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;

@interface NovembarController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaNovembar;
@property (nonatomic, strong)NSArray *spisakZitijaZaNovembar;
@property (nonatomic, strong)NSTimer *aTimer;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;
@end
