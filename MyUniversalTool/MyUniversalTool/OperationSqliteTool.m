//
//  OperationSqliteTool.m
//  MyUniversalTool
//
//  Created by hesz on 2017/7/30.
//  Copyright © 2017年 HSZ. All rights reserved.
//

#import "OperationSqliteTool.h"
#import <sqlite3.h>

@interface OperationSqliteTool()

// 数据库对象实例 
@property (nonatomic, assign) sqlite3 *db;

- (void)setupDataFormKeyWord:(NSArray *)key,...NS_REQUIRES_NIL_TERMINATION;
@end

@implementation OperationSqliteTool

//初始化数据库
- (void)setupDb
{
    // 打开数据库(连接数据库)
    NSString *filename = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"shops.sqlite"];
    // 如果数据库文件不存在, 系统会自动创建文件自动初始化数据库
    int status = sqlite3_open(filename.UTF8String, &_db);
    if (status == SQLITE_OK) { // 打开成功
        NSLog(@"打开数据库成功");
        
        // 创表
        const char *sql = "CREATE TABLE IF NOT EXISTS t_shop (id integer PRIMARY KEY, name text NOT NULL, price real);";
        char *errmsg = NULL;
        sqlite3_exec(self.db, sql, NULL, NULL, &errmsg);
        if (errmsg) {
            NSLog(@"创表失败--%s", errmsg);
        }
    } else { // 打开失败
        NSLog(@"打开数据库失败");
    }
}


//查询数据
- (void)setupDataFormKeyWord:(NSArray *)key,...
{
    
    va_list args;
    va_start(args, key); // scan for arguments after firstObject.
    
    // get rest of the objects until nil is found
    NSMutableString *allStr = [[NSMutableString alloc] initWithCapacity:16] ;
    for (NSString *str = key; str != nil; str = va_arg(args,NSString*))
    {
        [allStr appendFormat:@"* %@ ",str];
    }

    
    const char *sql = "SELECT name,price FROM t_shop;";
    // stmt是用来取出查询结果的
    sqlite3_stmt *stmt = NULL;
    // 准备
    int status = sqlite3_prepare_v2(self.db, sql, -1, &stmt, NULL);
    if (status == SQLITE_OK) { // 准备成功 -- SQL语句正确
        while (sqlite3_step(stmt) == SQLITE_ROW) { // 成功取出一条数据
            const char *name = (const char *)sqlite3_column_text(stmt, 0);
            const char *price = (const char *)sqlite3_column_text(stmt, 1);
            
            NSString *nameString = [NSString stringWithUTF8String:name];
            NSString *priceString = [NSString stringWithUTF8String:price];
            NSLog(@"nameString:%@--priceString:%@",nameString,priceString);
        }
    }
    
     va_end(args);
}

//插入数据
- (void)insertDataName:(NSString *)nameText withPrice:(NSString *)priceText
{
    NSString *sql = [NSString stringWithFormat:@"INSERT INTO t_shop(name, price) VALUES ('%@', %f);", nameText, priceText.doubleValue];
    sqlite3_exec(self.db, sql.UTF8String, NULL, NULL, NULL);
}




@end
