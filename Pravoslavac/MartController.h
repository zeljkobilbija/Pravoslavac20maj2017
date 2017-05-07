//
//  MartController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;
@interface MartController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaMart;
@property (nonatomic, strong)NSArray *spisakZitijaZaMart;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;





@end



