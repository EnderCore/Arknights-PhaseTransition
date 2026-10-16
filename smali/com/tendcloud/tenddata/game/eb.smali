.class public Lcom/tendcloud/tenddata/game/eb;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static c:Lcom/tendcloud/tenddata/game/dm;

.field private static d:Lcom/tendcloud/tenddata/game/dp;

.field private static e:Lcom/tendcloud/tenddata/game/dt;

.field private static f:Lcom/tendcloud/tenddata/game/dq;

.field private static volatile g:Lcom/tendcloud/tenddata/game/eb;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->d:Lcom/tendcloud/tenddata/game/dp;

    new-instance v0, Lcom/tendcloud/tenddata/game/dt;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dt;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->f:Lcom/tendcloud/tenddata/game/dq;

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->g:Lcom/tendcloud/tenddata/game/eb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/eb;->a:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/eb;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/eb;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/eb;->g:Lcom/tendcloud/tenddata/game/eb;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/eb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/eb;->g:Lcom/tendcloud/tenddata/game/eb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/eb;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eb;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/eb;->g:Lcom/tendcloud/tenddata/game/eb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/eb;->g:Lcom/tendcloud/tenddata/game/eb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dl;Z)Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dl;->a_()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/eb;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/eb;->b:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->a()Lcom/tendcloud/tenddata/game/dm;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/game/ea;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/dm;->setUniqueId(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    invoke-virtual {v1, p3}, Lcom/tendcloud/tenddata/game/dm;->setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    invoke-virtual {v1, p3}, Lcom/tendcloud/tenddata/game/dm;->setSubmitChannelId(Lcom/tendcloud/tenddata/game/a;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    if-nez v1, :cond_7

    new-instance v1, Lcom/tendcloud/tenddata/game/dt;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dt;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    :goto_1
    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    sget-object v1, Lcom/tendcloud/tenddata/game/dt;->a:Lcom/tendcloud/tenddata/game/ds;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ds;->b()V

    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->d:Lcom/tendcloud/tenddata/game/dp;

    if-nez v1, :cond_4

    new-instance v1, Lcom/tendcloud/tenddata/game/dp;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dp;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->d:Lcom/tendcloud/tenddata/game/dp;

    :cond_4
    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->f:Lcom/tendcloud/tenddata/game/dq;

    if-nez v1, :cond_5

    new-instance v1, Lcom/tendcloud/tenddata/game/dq;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dq;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/eb;->f:Lcom/tendcloud/tenddata/game/dq;

    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->f:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dq;->b()V

    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dt;->c()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v1

    sget v2, Lcom/tendcloud/tenddata/game/bp;->a:I

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/dr;->setSlots(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_2
    :try_start_4
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dl;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dt;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->c:Lcom/tendcloud/tenddata/game/dm;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dm;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->d:Lcom/tendcloud/tenddata/game/dp;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dp;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appContext"

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dj;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user"

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->f:Lcom/tendcloud/tenddata/game/dq;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dq;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "ts"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ea;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dt;->b()Lcom/tendcloud/tenddata/game/du;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/du;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dt;->b()Lcom/tendcloud/tenddata/game/du;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/du;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lcom/tendcloud/tenddata/game/dw;

    sget-object v3, Lcom/tendcloud/tenddata/game/dy;->a:Lcom/tendcloud/tenddata/game/dy;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/dw;-><init>(Lcom/tendcloud/tenddata/game/dy;)V

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dw;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lcom/tendcloud/tenddata/game/dw;

    sget-object v3, Lcom/tendcloud/tenddata/game/dy;->b:Lcom/tendcloud/tenddata/game/dy;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/dw;-><init>(Lcom/tendcloud/tenddata/game/dy;)V

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dw;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/tendcloud/tenddata/game/dw;

    sget-object v3, Lcom/tendcloud/tenddata/game/dy;->c:Lcom/tendcloud/tenddata/game/dy;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/dw;-><init>(Lcom/tendcloud/tenddata/game/dy;)V

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dw;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_3
    :try_start_6
    const-string v2, "networks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/tendcloud/tenddata/game/dn;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dn;-><init>()V

    const-string v2, "locations"

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dn;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_7
    :try_start_8
    sget-object v1, Lcom/tendcloud/tenddata/game/eb;->e:Lcom/tendcloud/tenddata/game/dt;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dt;->c()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dr;->c()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v2

    goto :goto_3
.end method
