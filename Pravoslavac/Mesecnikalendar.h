#import <UIKit/UIKit.h>
@class StariNoviKalendar;
@class DnevniKalendar;
@class FebruarCell;
@interface Mesecnikalendar : UITableViewController

@property (nonatomic, retain)NSArray *spisakSvetacaZaJanuar;
@property (nonatomic, retain)NSArray *spisakZitijaZaJanuar;
@property (nonatomic,retain)NSDictionary *svetciDict;
@property (nonatomic,retain)NSDictionary *zitijaDict;
@property (nonatomic,retain)NSDictionary *ikoneDict;
@property (nonatomic,retain)NSDictionary *ikoneVelikeDict;
@property (nonatomic,retain)UIImage *velikaIkona;
@property (nonatomic, retain)IBOutlet FebruarCell *januarskiCell;

@end
