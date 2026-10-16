.class public Lcom/reyun/tracking/utils/ReYunDatabaseUtil;
.super Ljava/lang/Object;
.source "ReYunDatabaseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;,
        Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;
    }
.end annotation


# static fields
.field static final TABLE_TRACKING:Ljava/lang/String; = "tracking"

.field private static sUtils:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/reyun/tracking/common/ReYunConst$BusinessType;",
            "Lcom/reyun/tracking/utils/ReYunDatabaseUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DB_NAME:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final VERSION:I

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReyunDB"

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->TAG:Ljava/lang/String;

    const-string v0, "Reyun.db"

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->DB_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->VERSION:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReyunDB"

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->TAG:Ljava/lang/String;

    const-string v0, "Reyun.db"

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->DB_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->VERSION:I

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;

    invoke-direct {v0, p0, p1}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;-><init>(Lcom/reyun/tracking/utils/ReYunDatabaseUtil;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mDBHelper:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;

    iput-object p2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/reyun/tracking/utils/ReYunDatabaseUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method private byteArrayToJsonObj([B)Lorg/json/JSONObject;
    .locals 9

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ""

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ReyunDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database was closed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;
    .locals 3

    const-class v2, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "tracking"

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    invoke-direct {v2, p0, v0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private open()V
    .locals 3

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ReyunDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database was opened!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mDBHelper:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;

    invoke-virtual {v0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ReyunDB"

    const-string v1, "Your memory is not enough!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-string v0, "ReyunDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database was already opened!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private updateStatus(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ReyunDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext is Null when update status from database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->open()V

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    throw v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ReyunDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext is Null when delete data from database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->open()V

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    throw v0
.end method

.method public deleteFromById(Ljava/lang/String;)V
    .locals 5

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 4

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "ReyunDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext is Null when insert data to database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v2

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->open()V

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    throw v1
.end method

.method public queryDataFromWithLimit(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
    .locals 2

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->queryDataWithLimit(Ljava/lang/String;I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryDataWithLimit(Ljava/lang/String;I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mContext:Landroid/content/Context;

    if-nez v11, :cond_0

    const-string v11, "ReyunDB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mContext is Null when query data from database"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->open()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " limit ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "_id"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v11, "value"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->byteArrayToJsonObj([B)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "ReyunDB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "==== query failed record row from + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " id is ======"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->printErrLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;-><init>(Lcom/reyun/tracking/utils/ReYunDatabaseUtil;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->close()V

    throw v11
.end method

.method public updateStatusById(Ljava/lang/String;I)V
    .locals 5

    sget-object v1, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->sUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->mTableName:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->updateStatus(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
