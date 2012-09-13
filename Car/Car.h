// include와의 차이는 중복 헤더를 알아서 처리
#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int year;
    NSString *make;
    NSString *model;
    
}
/*
 -는 인스턴스
 setMake : andModel : andYear
 */
- (void) setMake : (NSString *) aMake andModel : (NSString *) aModel andYear : (int) aYear;
- (void) printCarInfo;
// int year()
- (int) year;

@end
