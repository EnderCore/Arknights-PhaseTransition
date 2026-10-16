.class public Lcom/tendcloud/tenddata/game/df;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Ljava/util/HashMap;

.field static b:Ljava/util/HashMap;

.field static c:Ljava/lang/String;

.field static d:[B

.field private static volatile e:Lcom/tendcloud/tenddata/game/df;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->b:Ljava/util/HashMap;

    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->e:Lcom/tendcloud/tenddata/game/df;

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/df;->b()Lcom/tendcloud/tenddata/game/df;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->d:[B

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/tendcloud/tenddata/game/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->d:[B

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static b()Lcom/tendcloud/tenddata/game/df;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/df;->e:Lcom/tendcloud/tenddata/game/df;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/df;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/df;->e:Lcom/tendcloud/tenddata/game/df;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/df;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/df;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/df;->e:Lcom/tendcloud/tenddata/game/df;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/df;->e:Lcom/tendcloud/tenddata/game/df;

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
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/List;
    .locals 6

    const/16 v5, 0x64

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/dh;->a()Lcom/tendcloud/tenddata/game/dh;

    move-result-object v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/tendcloud/tenddata/game/dh;->a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Lcom/tendcloud/tenddata/game/df;->d:[B

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/bq;->b([B[B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/game/dh;->a()Lcom/tendcloud/tenddata/game/dh;

    move-result-object v2

    rsub-int/lit8 v0, v0, 0x64

    const-string v3, "__database_reborn_January_one__"

    invoke-virtual {v2, p1, v0, v3}, Lcom/tendcloud/tenddata/game/dh;->a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->b([B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTDEBEventDataStore(Lcom/tendcloud/tenddata/game/db;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/dl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dl;->setData(Ljava/util/Map;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/eb;->a()Lcom/tendcloud/tenddata/game/eb;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    iget-object v4, p1, Lcom/tendcloud/tenddata/game/db;->e:Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/eb;->a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/df;->d:[B

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/game/bq;->a([B[B)[B

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/dg;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/dg;-><init>([B)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dh;->a()Lcom/tendcloud/tenddata/game/dh;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/dh;->a(Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/db;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/dl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dl;->setData(Ljava/util/Map;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/eb;->a()Lcom/tendcloud/tenddata/game/eb;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    iget-object v4, p1, Lcom/tendcloud/tenddata/game/db;->e:Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/eb;->a(Lcom/tendcloud/tenddata/game/dl;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/df;->d:[B

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/game/bq;->a([B[B)[B

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/dg;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/dg;-><init>([B)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dh;->a()Lcom/tendcloud/tenddata/game/dh;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/dh;->a(Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/db;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/dh;->a()Lcom/tendcloud/tenddata/game/dh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/dh;->confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
