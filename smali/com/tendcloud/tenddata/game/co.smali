.class public Lcom/tendcloud/tenddata/game/co;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/co;

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/co;->a()Lcom/tendcloud/tenddata/game/co;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    sput-boolean v2, Lcom/tendcloud/tenddata/game/co;->b:Z

    sput-boolean v2, Lcom/tendcloud/tenddata/game/co;->c:Z

    sput-boolean v2, Lcom/tendcloud/tenddata/game/co;->d:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/co;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/co;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/co;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/co;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    sget-boolean v0, Lcom/tendcloud/tenddata/game/co;->c:Z

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TalkingData Game Analytics init...\n\tSDK_VERSION is: Android+TD+V4.0.12 gp Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/ab;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Build_Num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "397"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tSDK_OVC is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TDOVC+227b20b417d835330d73bdfac0cb60bc+SaaS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/ab;->b:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/as;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "TDLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->p()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tendcloud/tenddata/game/cp;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cp;-><init>(Lcom/tendcloud/tenddata/game/co;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/co;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/at;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dj;->setSessionId(Ljava/lang/String;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mission"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "custom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/dj;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TDFeatures is null..."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForInternal([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/tendcloud/tenddata/game/at;->b(JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bq;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x16

    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bk;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/at;->setInitTime(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v1, "getProp"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "sysproperty"

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendInitEventWithTDFeatures(Lcom/tendcloud/tenddata/game/a;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TDFeatures is null..."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForInternal([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    :goto_1
    const-string v1, "first"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v3, "app"

    iput-object v3, v1, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v3, "init"

    iput-object v3, v1, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    iput-object p0, v1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    new-instance v1, Lcom/tendcloud/tenddata/game/da;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/da;-><init>()V

    iput-object p0, v1, Lcom/tendcloud/tenddata/game/da;->a:Lcom/tendcloud/tenddata/game/a;

    sget-object v2, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    iput-object v2, v1, Lcom/tendcloud/tenddata/game/da;->b:Lcom/tendcloud/tenddata/game/da$a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/co;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final onTDEBEventInitEvent(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 6

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    const-string v1, "install"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TRACKING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    iput-object v2, v3, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/Map;

    iput-object v1, v3, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    :cond_2
    iput-object v0, v3, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "init"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "channelId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/cu;->a()Lcom/tendcloud/tenddata/game/cu;

    invoke-static {}, Lcom/tendcloud/tenddata/game/ck;->a()Lcom/tendcloud/tenddata/game/ck;

    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->a()Lcom/tendcloud/tenddata/game/cn;

    invoke-static {}, Lcom/tendcloud/tenddata/game/cl;->a()Lcom/tendcloud/tenddata/game/cl;

    invoke-static {}, Lcom/tendcloud/tenddata/game/cm;->a()Lcom/tendcloud/tenddata/game/cm;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/co;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/co;->b()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tendcloud/tenddata/game/ab;->b:Z

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/tendcloud/tenddata/game/co;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    :cond_5
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/co;->sendInitEventWithTDFeatures(Lcom/tendcloud/tenddata/game/a;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "sendInit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/co;->sendInitEventWithTDFeatures(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
