//
//  StariNoviKalendar.m
//  ClassMaker
//
//  Created by Zeljko Bilbija on 01/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "StariNoviKalendar.h"
#define MINUS_13_DANA -(60*60*24*13)
#define MINUS_14_DANA -(60*60*24*14)

@implementation StariNoviKalendar

- (instancetype)init {
    self = [super init];
    if (self) {

    }         
    return self;
}



-(NSString *)danUNedeljiPoStaromKalendaru:(NSTimer *)aTimer{
    
    NSString *str=nil;
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];

    dateFormat.dateFormat = @"ee";
    
    
    str = [dateFormat stringFromDate:date];
    
    
    
    int nazivDana= str.intValue;
    
    
    
    
    switch (nazivDana) {
        case 2:
            str = @"Понедељак";
            break;
        case 3:
            str = @"Уторак";
            break;
        case 4:
            str = @"Среда";
            break;
        case 5:
            str = @"Четвртак";
            break;
        case 6:
            str = @"Петак";
            break;
        case 7:
            str = @"Субота";
            break;
        case 1:
            str = @"Недеља";
            break;
        default:
            str = @"Nesto ne valja";
            break;
    }

    [dateFormat release];
    
    return str;
}

-(NSString *)mesecPoStaromKalendaru:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"LLLL";

    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
   
    NSDateComponents *weekdayComponents =
    [gregorian components:NSCalendarUnitMonth  fromDate:stariKalendar];
    NSInteger weekday = weekdayComponents.month;

    [gregorian release];

    switch (weekday) {
        case 1:
            str = @"Јануар";
            break;
        case 2:
            str = @"Фебруар";
            break;
        case 3:
            str = @"Март";
            break;
        case 4:
            str = @"Април";
            break;
        case 5:
            str = @"Мај";
            break;
        case 6:
            str = @"Јун";
            break;
        case 7:
            str = @"Јул";
            break;
        case 8:
            str = @"Август";
            break;
        case 9:
            str = @"Септембар";
            break;
        case 10:
            str = @"Октобар";
            break;
        case 11:
            str = @"Новембар";
            break;
        case 12:
            str = @"Децембар";
            break;
        default:
            str = @"Несто није у реду";
            break;
    }

    
    [dateFormat release];
    return str;
}

-(NSString *)kratakMesecPoStaromKalendaru:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"LLLL";
    
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDateComponents *weekdayComponents =
    [gregorian components:NSCalendarUnitMonth fromDate:stariKalendar];
    NSInteger weekday = weekdayComponents.month;
    
    [gregorian release];
    
    switch (weekday) {
        case 1:
            str = @"Јан";
            break;
        case 2:
            str = @"Феб";
            break;
        case 3:
            str = @"Март";
            break;
        case 4:
            str = @"Апр";
            break;
        case 5:
            str = @"Мај";
            break;
        case 6:
            str = @"Јун";
            break;
        case 7:
            str = @"Јул";
            break;
        case 8:
            str = @"Авг";
            break;
        case 9:
            str = @"Сеп";
            break;
        case 10:
            str = @"Окт";
            break;
        case 11:
            str = @"Нов";
            break;
        case 12:
            str = @"Дец";
            break;
        default:
            str = @"Несто није у реду";
            break;
    }
    
    
    [dateFormat release];
    return str;
}


-(NSString *)mesecPoNovomKalendaru:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
        //NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"LLLL";

    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

    
    NSDateComponents *weekdayComponents =
    [gregorian components:NSCalendarUnitMonth fromDate:sada];
    NSInteger weekday = weekdayComponents.month;
    
    [gregorian release];
        
    
 
    
    
    
    switch (weekday) {
        case 1:
            str = @"Јануар";
            break;
        case 2:
            str = @"Фебруар";
            break;
        case 3:
            str = @"Март";
            break;
        case 4:
            str = @"Април";
            break;
        case 5:
            str = @"Мај";
            break;
        case 6:
            str = @"Јун";
            break;
        case 7:
            str = @"Јул";
            break;
        case 8:
            str = @"Август";
            break;
        case 9:
            str = @"Септембар";
            break;
        case 10:
            str = @"Октобар";
            break;
        case 11:
            str = @"Новембар";
            break;
        case 12:
            str = @"Децембар";
            break;
        default:
            str = @"Несто није у реду";
            break;
    }

    
    [dateFormat release];
    return str;
}


-(NSString *)sekundara{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"ss";
    
    str = [dateFormat stringFromDate:sada];
    [dateFormat release];
    return str;

}

-(NSString *)sati{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"HH";
    
    str = [dateFormat stringFromDate:sada];
    [dateFormat release];
    return str;

}


-(NSString *)minuti{
    NSString *str=nil;
    NSDate *sada = [NSDate date];

    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"mm";

    str = [dateFormat stringFromDate:sada];
    [dateFormat release];
    return str;

}


-(NSString *)datumPoNovom:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"dd";

    str = [dateFormat stringFromDate:sada];
    [dateFormat release];
    return str;
}

-(NSString *)datumPoStarom:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"dd";
      
    str = [dateFormat stringFromDate:stariKalendar];
    [dateFormat release];
    return str;

}

-(NSString *)staraGodina:(NSTimer *)aTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"yyyy";
    
    str = [dateFormat stringFromDate:stariKalendar];
    [dateFormat release];
    return str;

}
-(NSString *)novaGodina:(NSTimer *)aTimer{
   NSString *str=nil;
    NSDate *sada = [NSDate date];
        // NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"yyyy";
    
    str = [dateFormat stringFromDate:sada];
    [dateFormat release];
    return str;

}

-(NSString *)danUnedeljiPoNovom{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"ee";
    
    str = [dateFormat stringFromDate:stariKalendar];
    [dateFormat release];
    return str;
}

-(NSString *)redniBrojDanaUGodiniNoviKalendar{
    
    NSString *str=nil;
    NSDate *sada = [NSDate date];
        //NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"ee";
    
    str = [dateFormat stringFromDate:sada];
    [dateFormat release];

        // int brojDana = [str intValue];
    
   
    return str;
    
}

-(NSString *)datumPoStaromNoTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"dd";
    
    str = [dateFormat stringFromDate:stariKalendar];
    [dateFormat release];
    return str;
}


-(NSString *)mesecPoStaromKalendaruNoTimer{
    NSString *str=nil;
    NSDate *sada = [NSDate date];
    NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"LLLL";
    
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDateComponents *weekdayComponents =
    [gregorian components:NSCalendarUnitMonth fromDate:stariKalendar];
    NSInteger weekday = weekdayComponents.month;
    
    [gregorian release];
    
    switch (weekday) {
        case 1:
            str = @"Јануар";
            break;
        case 2:
            str = @"Фебруар";
            break;
        case 3:
            str = @"Март";
            break;
        case 4:
            str = @"Април";
            break;
        case 5:
            str = @"Мај";
            break;
        case 6:
            str = @"Јун";
            break;
        case 7:
            str = @"Јул";
            break;
        case 8:
            str = @"Август";
            break;
        case 9:
            str = @"Септембар";
            break;
        case 10:
            str = @"Октобар";
            break;
        case 11:
            str = @"Новембар";
            break;
        case 12:
            str = @"Децембар";
            break;
        default:
            str = @"Несто није у реду";
            break;
    }

    [dateFormat release];
    return str;

}


-(NSString *)redniBrojDanaUGodiniInteger:aTimer{
        
    NSString *str=nil;
  
    NSDate *sada = [NSDate date];
        //NSDate *stariKalendar = [sada dateByAddingTimeInterval:MINUS_13_DANA];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"DDD";
    
    str = [dateFormat stringFromDate:sada];
    
    
   
    [dateFormat release];
    
    

    
    
    
    
    
    return str;
}



@end
