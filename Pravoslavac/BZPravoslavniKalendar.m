//
//  BZPravoslavniKalendar.m
//  Command Line Kalendar
//
//  Created by Zeljko Bilbija on 21/12/12.
//  Copyright (c) 2012 Zeljko Bilbija. All rights reserved.
//

#import "BZPravoslavniKalendar.h"
#define RAZLIKA_U_DANIMA 13
#define PRVI_DAN_U_NEDELJI 1
#define NEDELJA 1
#define SREDA 4
#define PETAK 6


@interface BZPravoslavniKalendar()

@property(strong)NSString *stringa;
@property(strong)NSCalendar *gregorijan;
@property(strong)NSDate *noviDate;
@property(strong)NSDate *stariDate;
@property(strong)NSDateFormatter *dateFormater;
@property(strong)NSDateComponents *comps;
@property NSInteger redniBrojDanaUNedelji;
@property(strong)NSDictionary *daniVaskrsauGodini;

    
    
@end

int danVaskrsa;



@implementation BZPravoslavniKalendar

@synthesize stringa=_stringa;
@synthesize gregorijan=_gregorijan;
@synthesize noviDate=_noviDate;
@synthesize stariDate=_stariDate;
@synthesize dateFormater=_dateFormater;
@synthesize comps=_comps;
@synthesize redniBrojDanaUNedelji=_redniBrojDanaUNedelji;
@synthesize daniVaskrsauGodini = _daniVaskrsauGodini;



- (id)init
{
    self = [super init];
    if (self) {
        self.stringa = nil;
        self.gregorijan = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar ]autorelease];
        [self.gregorijan setFirstWeekday:PRVI_DAN_U_NEDELJI];
        /*******VAZNO!!! TIME ZONE SETOVATI I ONDA OVAKO KASNI 1 SAT ******/
        //[self.gregorijan setTimeZone:[[NSTimeZone alloc] initWithName:@"GMT-09:00"]];
        self.noviDate = [NSDate date];
        self.comps = [[[NSDateComponents alloc] init]autorelease];
        [self.comps setDay:-RAZLIKA_U_DANIMA];
        self.stariDate = [self.gregorijan dateByAddingComponents:self.comps toDate:self.noviDate  options:0];
        self.dateFormater=[[[NSDateFormatter alloc] init]autorelease];
        
        /*******VAZNO!!! i za date formater setcalendar metod ******/
        [self.dateFormater setCalendar:self.gregorijan];
        
        self.daniVaskrsauGodini = [NSArray arrayWithObjects:[NSNumber numberWithInt:2012], nil];
        
    }
    return self;
}


-(NSString *)gregorijanskaGodina{
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"yyyy"]];
    return [self.dateFormater stringFromDate:self.noviDate];
}

-(NSString *)julijanskaGodina{
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"yyyy"]];
    return [self.dateFormater stringFromDate:self.stariDate];
}



-(BOOL)prestupnaGodinaYesNo{
    
        // NSRange f= [self.gregorijan minimumRangeOfUnit:NSDayCalendarUnit];
    
  
    
        // NSLog(@"%d",f.length);  // 28 ili 29
    
    

    NSInteger godina = 0;
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"yyyy"]];
    godina = [[self.dateFormater stringFromDate:self.noviDate] integerValue];
    
    if((!(godina%100==0) || (godina%400 == 0)) && (godina%4 == 0)  )
        return YES;
    else
        return NO;
    
}

-(NSString *)redniBrojDanaUGodiniNoviKalendar{
    
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"DDD"]];
    return [self.dateFormater stringFromDate:self.noviDate];
    

}

-(NSString *)redniBrojDanaUGodiniStariKalendar{

    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"DDD"]];
    return [self.dateFormater stringFromDate:self.stariDate];

}

-(NSString *)redniBrojDanaUMesecuNoviKalendar{
    
    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"d" options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *df = [[[NSDateFormatter alloc]init]autorelease];
    [df setDateFormat:formatString];
    return [df stringForObjectValue:self.noviDate];
    
}

-(NSString *)redniBrojDanaUMesecuStariKalendar{
/********/
    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"d" options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *df = [[[NSDateFormatter alloc]init]autorelease];
    [df setDateFormat:formatString];
    
    return [df stringForObjectValue:self.stariDate];
}


-(NSString *)gregorijanskiShortDatum{
    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"d MMM" options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *df = [[[NSDateFormatter alloc]init]autorelease];
    [df setDateFormat:formatString];
    return [df stringForObjectValue:self.noviDate];
}

-(NSInteger)gregorijanskiBrojNedeljeUGodini{

    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"ww"]];
    return ([[self.dateFormater stringFromDate:self.noviDate] integerValue]);
    
}

-(NSInteger)julijanskiBrojNedeljeUGodini{
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"HH"]];
    return ([[self.dateFormater stringFromDate:self.stariDate] integerValue]);
}

-(NSInteger)redniBrojNedeljeUMesecuNoviKalendar{

    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"W"]];
    return ([[self.dateFormater stringFromDate:self.noviDate] integerValue]);
}

-(NSInteger)redniBrojNedeljeUMesecuStariKalendar{
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"W"]];
    return ([[self.dateFormater stringFromDate:self.stariDate] integerValue]);
}


-(NSString *)nazivMesecaNoviKalendar{
    
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
    return [[self.dateFormater stringFromDate:self.noviDate]capitalizedString];
}


-(NSString *)nazivMesecaStariKalendar{
        [self.dateFormater setCalendar:self.gregorijan];
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
    return [[self.dateFormater stringFromDate:self.stariDate]capitalizedString];
}


-(NSString *)nazivDana{
    NSString *formatString = [NSDateFormatter dateFormatFromTemplate:@"EEEE" options:0 locale:[NSLocale currentLocale]];
        //NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [self.dateFormater setDateFormat:formatString];
    return [[self.dateFormater stringForObjectValue:self.noviDate] capitalizedString];
    
}

-(NSInteger)redniBrojDanaUNedeljiMethod{

    /*******VAZNO!!! self.dateFormater setCalendar metod ******/
    //[self.gregorijan setFirstWeekday:PRVI_DAN_U_NEDELJI];
    //[self.dateFormater setCalendar:self.gregorijan];

    /***************************************/
    /***** MOZE I OVAKO, DA SE VRATI INTEGER ALI ONDA NIJE LOKALIZOVANA STRINGA ???   *****/
    //NSDateComponents *comps = [self.gregorijan components:NSUndefinedDateComponent fromDate:self.noviDate];
    //return [comps weekday];
    /**********************************/
    
         NSDateComponents *c = [[[NSDateComponents alloc]init]autorelease];
        c = [self.gregorijan components:NSWeekdayCalendarUnit fromDate:self.noviDate];
    
//    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"e"]];
//    return [[self.dateFormater stringFromDate:self.noviDate] integerValue];
    
    return [c weekday];
    
    

}
#pragma mark -
#pragma mark USKRS

-(NSDictionary *)uskrs:(NSInteger)godina{
    
    
    int kojiMesec=0;
    int d = (15+godina%19*19)%30;
    d += 10 - (d + godina + godina/4) % 7;
    
    NSString *mesec;
    
    if (d>30) {
        kojiMesec = 5;
        mesec = @". Maja";
        d -= 30;
    }
    else {
        kojiMesec = 4;
        mesec = @". Aprila";
    }
    NSLog(@"Uskrs %i pada %d%@", godina,d,mesec);
    
    //ovaj NSDictionary treba vratiti sa return
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:d]  ,@"datum",[NSNumber numberWithInt:kojiMesec],@"mesec", nil];    
    
    return dict;
    
}




-(BOOL)vaskrsJeNaDan{
    danVaskrsa = 0;
    
    if (danVaskrsa == [[self redniBrojDanaUGodiniNoviKalendar]intValue]) {
        return YES;
    }
    return NO;
    
}


#pragma mark -
#pragma mark POST Stringe

-(BOOL)sredaPetakYesNo{
    
    if ([self redniBrojDanaUNedeljiMethod] == SREDA || [self redniBrojDanaUNedeljiMethod] == PETAK ) {
        return YES;
    } else {
        return NO;
    }

}

-(BOOL)bozicniPostJe{
  
    if ([self prestupnaGodinaYesNo]) {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 6 || [[self redniBrojDanaUGodiniNoviKalendar] intValue] >= 333) {

            return YES;
        } else {
            return NO;
        }
        
    } else {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 6 || [[self redniBrojDanaUGodiniNoviKalendar] intValue] >= 332) {
            return YES;
        } else {
            return NO;
        }
        
    }
    
}

-(BOOL)vaskrsniPostJe{
    
    
    if ([self prestupnaGodinaYesNo]) {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] < 150 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] >140) {

            return YES;
        } else {
            return NO;
        }
        
    } else {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] < 150 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] >140) {
            return YES;
        } else {
            return NO;
        }
        
    }
}

-(BOOL)petrovskiPostJe{
    if ([self prestupnaGodinaYesNo]) {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 155 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] >=153) {

            return YES;
        } else {
            return NO;
        }
        
    } else {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 155 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] >=151) {
            return YES;
        } else {
            return NO;
        }
        
    }
}

-(BOOL)gospojinskiPostJe{
    
    if ([self prestupnaGodinaYesNo]) {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] >= 227 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 240) {
            return YES;
        } else {
            return NO;
        }
        
    } else {
        if ([[self redniBrojDanaUGodiniNoviKalendar] intValue] >= 226 && [[self redniBrojDanaUGodiniNoviKalendar] intValue] <= 239) {
            return YES;
        } else {
            return NO;
        }
        
    }
}


-(NSString *)postString{
    
    NSString *str = nil;
    
    if ([self bozicniPostJe]) {
        str= @"Божићни пост";
    }
    
    else if ([self vaskrsniPostJe]) {
        str = @"Васкршњи пост";
    }
    
    else if ([self petrovskiPostJe]) {
        str = @"Петровски пост";
    }
    
    else if ([self gospojinskiPostJe]) {
        str = @"Госпојински пост";
    }
    else if ([self sredaPetakYesNo]){
        str = @"Пост";
    }
    else{
        str = @"";
    }
    
    return str;
}

#pragma mark -

#pragma mark CELL Stringe

-(NSString *)meseciZaCell:(NSInteger)row{
    
    NSDate *januar= [NSDate dateWithTimeIntervalSince1970:0];
    NSDateComponents *comps = [[[NSDateComponents alloc] init]autorelease];
    [comps setMonth:1];
    NSDate *februar = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0];
    [comps setMonth:2];
     NSDate *mart = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0];  
    [comps setMonth:3];
    NSDate *april = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:4];
    NSDate *maj = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:5];
    NSDate *jun = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:6];
    NSDate *jul = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:7];
    NSDate *avgust = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:8];
    NSDate *septembar = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:9];
    NSDate *oktobar = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:10];
    NSDate *novembar = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    [comps setMonth:11];
    NSDate *decembar = [self.gregorijan dateByAddingComponents:comps toDate:januar  options:0]; 
    
    
    switch (row) {
        case 0:
            //januar
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:januar]capitalizedString];
            break;
            
        case 1:
            //februar
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:februar]capitalizedString];
            
        case 2:
            // ....
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:mart]capitalizedString];
            break;
            
        case 3:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:april]capitalizedString];
            break;
            
        case 4:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:maj]capitalizedString];
            break;
            
        case 5:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:jun]capitalizedString];
            break;
            
        case 6:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:jul]capitalizedString];
            break;
            
        case 7:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:avgust]capitalizedString];
            break;
            
        case 8:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:septembar]capitalizedString];
            break;
            
        case 9:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:oktobar]capitalizedString];
            break;
            
        case 10:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:novembar]capitalizedString];
            break;
            
        case 11:
            [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
            return [[self.dateFormater stringFromDate:decembar]capitalizedString];
            break;

    }
    
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"MMMM"]];
    return [[self.dateFormater stringFromDate:self.noviDate]capitalizedString];

}

-(NSString *)danZaCell:(NSInteger)row{
    /*
     Ovde treba videti koji je datum vezan sa koji cell i na osnovu tog datuma traziti return dana u nedelji i na osnovu toga vratiti odgovarajucu stringu, a kasnije i ineti da za nedelju bude i crvene boje.
     */
    
    
    
    
    
    NSDate *nedelja= [NSDate dateWithTimeIntervalSince1970:0];
    NSDateComponents *weekdayComponents =
    [self.gregorijan components:NSWeekdayCalendarUnit fromDate:nedelja];
    int weekday = [weekdayComponents weekday];
    NSLog(@"%d",weekday);
    
    switch (row) {
        case 1:
            //Nedelja
            break;
        case 2:
            //ponedeljak
            break;
        case 3:
            //utorak
            break;
        case 4:
            //...
            break;
        case 5:
            
            break;
        case 6:
            
            break;
        case 7:
            
            break;

    }
    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"EEEE"]];
            return [[self.dateFormater stringFromDate:self.noviDate]capitalizedString];
}






-(NSString *)kolikoJeSati{

    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"HH"]];
    return [self.dateFormater stringFromDate:self.noviDate];
}

-(NSString *)kolikoJeMinuta{

    [self.dateFormater setDateFormat:[NSString localizedStringWithFormat:@"mm"]];
    return [self.dateFormater stringFromDate:self.noviDate];
}

@end
