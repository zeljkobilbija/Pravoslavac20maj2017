//
//  JunController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;


@interface JunController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaJun;
@property (nonatomic, strong)NSArray *spisakZitijaZaJun;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;
@end
