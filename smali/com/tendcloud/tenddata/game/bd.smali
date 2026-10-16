.class public Lcom/tendcloud/tenddata/game/bd;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bd$a;,
        Lcom/tendcloud/tenddata/game/bd$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "LockManager Error: filePath can not be null!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->b(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->c(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/nio/channels/FileLock;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/bd$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/be;)V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/util/concurrent/locks/Lock;)Ljava/util/concurrent/locks/Lock;

    sget-object v4, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "LockManager Error: filePath can not be null!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/io/RandomAccessFile;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/tendcloud/tenddata/game/bd$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/be;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-static {v3, v0}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/util/concurrent/locks/Lock;)Ljava/util/concurrent/locks/Lock;

    sget-object v2, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getFileLock(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LockManager Error: filePath can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->b(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/bd$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/be;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/bd$a;->a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/util/concurrent/locks/Lock;)Ljava/util/concurrent/locks/Lock;

    sget-object v3, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static releaseFileLock(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LockManager Error: filePath can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LockManager Error: there is no information about this file in the cache!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bd;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->c(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/nio/channels/FileLock;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->c(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/nio/channels/FileLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bd$a;->b(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
