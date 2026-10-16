.class public final Lcom/alipay/apmobilesecuritysdk/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/apmobilesecuritysdk/b/a;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/b/a;->a()Lcom/alipay/apmobilesecuritysdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->c:I

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->b()V

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a()Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v13, [Ljava/lang/String;

    const-string v2, "2017-01-27 2017-01-28"

    aput-object v2, v4, v1

    const-string v2, "2017-11-10 2017-11-11"

    aput-object v2, v4, v0

    const-string v2, "2017-12-11 2017-12-12"

    aput-object v2, v4, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    mul-double/2addr v6, v8

    mul-double/2addr v6, v10

    mul-double/2addr v6, v10

    double-to-int v2, v6

    mul-int/lit8 v5, v2, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v13, :cond_1

    :try_start_0
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    if-ne v7, v12, :cond_0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 00:00:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " 23:59:59"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0xd

    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/http/model/c;"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    new-instance v5, Lcom/alipay/security/mobile/module/http/model/d;

    invoke-direct {v5}, Lcom/alipay/security/mobile/module/http/model/d;-><init>()V

    const-string v0, "appName"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionId"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpcVersion"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/e/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13000
    iput-object v1, v5, Lcom/alipay/security/mobile/module/http/model/d;->c:Ljava/lang/String;

    .line 15000
    :goto_0
    iput-object v2, v5, Lcom/alipay/security/mobile/module/http/model/d;->d:Ljava/lang/String;

    .line 16000
    iput-object v3, v5, Lcom/alipay/security/mobile/module/http/model/d;->e:Ljava/lang/String;

    .line 0
    const-string v0, "android"

    .line 17000
    iput-object v0, v5, Lcom/alipay/security/mobile/module/http/model/d;->a:Ljava/lang/String;

    .line 0
    const-string v1, ""

    const-string v3, ""

    const-string v2, ""

    const-string v0, ""

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/e/d;->c(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/c;->c()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/e/a;->c(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/b;->c()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/d;->b()Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/c;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/a;->b()Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/e/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 18000
    :cond_3
    iput-object v3, v5, Lcom/alipay/security/mobile/module/http/model/d;->h:Ljava/lang/String;

    .line 19000
    iput-object v1, v5, Lcom/alipay/security/mobile/module/http/model/d;->g:Ljava/lang/String;

    .line 20000
    iput-object v6, v5, Lcom/alipay/security/mobile/module/http/model/d;->j:Ljava/lang/String;

    .line 0
    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 21000
    iput-object v1, v5, Lcom/alipay/security/mobile/module/http/model/d;->b:Ljava/lang/String;

    .line 22000
    iput-object v0, v5, Lcom/alipay/security/mobile/module/http/model/d;->i:Ljava/lang/String;

    .line 0
    :goto_1
    invoke-static {v4, p1}, Lcom/alipay/apmobilesecuritysdk/d/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 25000
    iput-object v0, v5, Lcom/alipay/security/mobile/module/http/model/d;->f:Ljava/util/Map;

    .line 0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/http/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alipay/security/mobile/module/http/v2/a;->a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/security/mobile/module/http/model/c;

    move-result-object v0

    :goto_2
    return-object v0

    .line 14000
    :cond_4
    iput-object v0, v5, Lcom/alipay/security/mobile/module/http/model/d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    .line 23000
    :cond_5
    :try_start_1
    iput-object v3, v5, Lcom/alipay/security/mobile/module/http/model/d;->b:Ljava/lang/String;

    .line 24000
    iput-object v2, v5, Lcom/alipay/security/mobile/module/http/model/d;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/d;->b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Lcom/alipay/apmobilesecuritysdk/e/c;)V

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/e/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/e/a;->b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Lcom/alipay/apmobilesecuritysdk/e/b;)V

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b()V
    .locals 8

    const/4 v7, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device_feature_file_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "wallet_times"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "wxcasxx_v3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "wxcasxx_v4"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "wxxzyy_v1"

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v2, v1, v0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ".SystemConfig/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    const-string v4, "tid"

    const-string v5, ""

    invoke-static {p1, v4, v5}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utdid"

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appName"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->b()V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->a()V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/a/a;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/common/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/security/mobile/module/b/b;->a()Lcom/alipay/security/mobile/module/b/b;

    invoke-static {}, Lcom/alipay/security/mobile/module/b/b;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/apmobilesecuritysdk/e/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v3, :cond_c

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->c:I

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/http/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v0, "connectivity"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_14

    :goto_3
    if-eqz v1, :cond_1

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/security/mobile/module/d/b;

    invoke-direct {v1, v0, v4}, Lcom/alipay/security/mobile/module/d/b;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/v2/a;)V

    .line 12000
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/security/mobile/module/d/c;

    invoke-direct {v2, v1}, Lcom/alipay/security/mobile/module/d/c;-><init>(Lcom/alipay/security/mobile/module/d/b;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_1
    :goto_4
    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->c:I

    return v0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/e;->a()V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/alipay/apmobilesecuritysdk/d/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_5
    if-eqz v3, :cond_6

    move v3, v1

    goto/16 :goto_0

    :cond_5
    move v3, v2

    goto :goto_5

    :cond_6
    const-string v3, "tid"

    const-string v5, ""

    invoke-static {p1, v3, v5}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "utdid"

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    goto/16 :goto_0

    :cond_7
    invoke-static {v5}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v1

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto/16 :goto_0

    :cond_c
    new-instance v3, Lcom/alipay/apmobilesecuritysdk/c/b;

    invoke-direct {v3}, Lcom/alipay/apmobilesecuritysdk/c/b;-><init>()V

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/b/a;->a()Lcom/alipay/apmobilesecuritysdk/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/b/a;->b()I

    move-result v5

    invoke-static {v3, v5}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/c;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1000
    iget-boolean v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->a:Z

    if-eqz v5, :cond_e

    iget-object v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->h:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move v0, v1

    .line 0
    :cond_d
    :goto_6
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v3, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Server error, result:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11000
    iget-object v3, v3, Lcom/alipay/security/mobile/module/http/model/a;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_1

    .line 1000
    :cond_e
    const-string v5, "APPKEY_ERROR"

    iget-object v6, v3, Lcom/alipay/security/mobile/module/http/model/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v0, 0x3

    goto :goto_6

    .line 0
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 2000
    const-string v5, "1"

    iget-object v6, v3, Lcom/alipay/security/mobile/module/http/model/c;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 0
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Z)V

    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 3000
    iget-object v0, v3, Lcom/alipay/security/mobile/module/http/model/c;->k:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "0"

    .line 0
    :goto_8
    invoke-static {v5, v0}, Lcom/alipay/apmobilesecuritysdk/e/h;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 4000
    iget-object v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->l:Ljava/lang/String;

    .line 0
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->e(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 5000
    iget-object v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->m:Ljava/lang/String;

    .line 0
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 6000
    iget-object v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->n:Ljava/lang/String;

    .line 0
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    .line 7000
    iget-object v5, v3, Lcom/alipay/security/mobile/module/http/model/c;->p:Ljava/lang/String;

    .line 0
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/e/h;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/d/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->c(Ljava/lang/String;)V

    .line 8000
    iget-object v0, v3, Lcom/alipay/security/mobile/module/http/model/c;->i:Ljava/lang/String;

    .line 0
    invoke-static {v4, v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9000
    iget-object v0, v3, Lcom/alipay/security/mobile/module/http/model/c;->h:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->b(Ljava/lang/String;)V

    .line 10000
    iget-object v0, v3, Lcom/alipay/security/mobile/module/http/model/c;->o:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->d(Ljava/lang/String;)V

    const-string v0, "tid"

    const-string v3, ""

    invoke-static {p1, v0, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->e(Ljava/lang/String;)V

    :goto_9
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->e(Ljava/lang/String;)V

    const-string v0, "utdid"

    const-string v3, ""

    invoke-static {p1, v0, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->f(Ljava/lang/String;)V

    :goto_a
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/i;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->a()V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->g()Lcom/alipay/apmobilesecuritysdk/e/c;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/alipay/apmobilesecuritysdk/e/d;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/c;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/d;->a()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/e/b;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/apmobilesecuritysdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/a;->a()V

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lcom/alipay/apmobilesecuritysdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/g;->a()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v4, v6, v7}, Lcom/alipay/apmobilesecuritysdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_f
    move v0, v2

    goto/16 :goto_1

    .line 3000
    :cond_10
    iget-object v0, v3, Lcom/alipay/security/mobile/module/http/model/c;->k:Ljava/lang/String;

    goto/16 :goto_8

    .line 0
    :cond_11
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/e/i;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_2
    move v0, v1

    goto/16 :goto_1

    :cond_13
    const-string v0, "Server error, returned null"

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_14
    move v1, v2

    goto/16 :goto_3

    :cond_15
    move-object v0, v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
