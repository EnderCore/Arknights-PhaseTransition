.class public Lcom/ta/utdid2/device/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/utdid2/device/a;

.field static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/ta/utdid2/device/a;)J
    .locals 6

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getUtdid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 20
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getImsi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->getImei()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 24
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    .line 29
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .locals 7

    .prologue
    .line 39
    if-eqz p0, :cond_1

    .line 40
    sget-object v2, Lcom/ta/utdid2/device/b;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/c;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 47
    :goto_0
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/a;->b(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/a;->setImei(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/a;->b(J)V

    .line 54
    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/a;->setImsi(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/a;->c(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/ta/utdid2/device/b;->a(Lcom/ta/utdid2/device/a;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/a;->a(J)V

    .line 57
    monitor-exit v2

    .line 61
    :goto_1
    return-object v0

    .line 59
    :cond_0
    monitor-exit v2

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/ta/utdid2/device/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit v1

    return-object v0

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/b;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/ta/utdid2/device/b;->a:Lcom/ta/utdid2/device/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
