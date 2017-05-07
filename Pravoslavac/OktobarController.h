//
//  OktobarController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;
@interface OktobarController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaOktobar;
@property (nonatomic, strong)NSArray *spisakZitijaZaOktobar;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;

@end
