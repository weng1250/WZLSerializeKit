# WZLSerializeKit
iOS serialization in 1 line. 
1行代码完成iOS序列化与反序列化，本文件提供iOS下的序列化与反序列集成方案。

  本文件提供iOS下的序列化与反序列集成方案，封装后用一行代码即可轻松实现。
在传统方式中当你需要对某个对象进行序列化与反序列化时，往往需要实现<NSCoding>协议以及<NSCopying>协议(非必须)，
在协议方法中对需要序列化的变量执行encode&decode操作。当变量较多并且需要序列化的自定义对象较多时容易出现过多冗余代码，稍有不慎容易出错。
 WZLSerializeKit在运行时对类以及所有层级父类的变量进行遍历，避免遗漏。属性越多，优势越明显。
  
  Usage:
  
     Person.h:
     ========================================
  	#import "WZLSerializeKit.h"
  
  	@interface Person: SomeSuperclass<NSCoding, NSCopying>
  	{
  		...
  	}
  
  	@end
    ========================================
  
  
  	 Person.m:
    ========================================
  	#import "Person.h"
  
  	@implementation Person
  
    WZLSERIALIZE_CODER_DECODER();
    WZLSERIALIZE_COPY_WITH_ZONE();
    WZLSERIALIZE_DESCRIPTION();//(NOT NECESSARY)
  
  	@end
    ========================================
  
  
at the place where you want to serialize Person instance:
eg:

    //archive object to NSData
    WZLSERIALIZE_ARCHIVE(person, @"Person", [self filePath]);
    //unarchive NSData to object
    Person  thePerson = nil;
    WZLSERIALIZE_UNARCHIVE(thePerson, @"Person", [self filePath]);
