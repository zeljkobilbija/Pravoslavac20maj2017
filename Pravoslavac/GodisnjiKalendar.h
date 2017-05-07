//
//  GodisnjiKalendar.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 08/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  GodinaCellViewController;

@interface GodisnjiKalendar : UITableViewController

@property (nonatomic, retain) IBOutlet GodinaCellViewController *godisnjiCell;

@end
