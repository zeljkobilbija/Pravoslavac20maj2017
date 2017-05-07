//
//  MajController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;

@interface MajController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaMaj;
@property (nonatomic, strong)NSArray *spisakZitijaZaMaj;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;

@end
