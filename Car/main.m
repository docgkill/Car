#import <Foundation/Foundation.h>
#import <objc/objc-runtime.h>
#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSObject *object = [[NSObject alloc] init];
        Car *myCar = [[Car alloc] init];
        
        printf("sizeof(object) %lu\n", sizeof(object));
        /*
         MRR 컴파일러는 아래 코드가 정상 동작한다. 그러나 기본 컴파일러인 ARC 컴파일러에는 동작하지 않는다.
         그래서 class_getInstanceSize를 사용하며 이를 사용하기 위해 objc-runtime.h을 사용한다.
         MRR은 manual retain/release 컴파일러이며 , ARC는 자동화된 레퍼런스 카운팅 체계를 가진 컴파일러이다.
         */
//        printf("sizeof(*object) %lu\n", sizeof(*object));
        printf("sizeof(*object) %lu\n", class_getInstanceSize([object class]));
        
        printf("sizeof(myCar) %lu\n", sizeof(myCar));
        printf("sizeof(*myCar) %lu\n", class_getInstanceSize([myCar class]));
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

