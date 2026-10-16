.class public Lcom/tendcloud/tenddata/game/dm;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# static fields
.field private static a:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static volatile d:Lcom/tendcloud/tenddata/game/dm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->d:Lcom/tendcloud/tenddata/game/dm;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    const-string v0, "displayName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ar;->a()Lcom/tendcloud/tenddata/game/ar;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ar;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "globalId"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ar;->a()Lcom/tendcloud/tenddata/game/ar;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "versionCode"

    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "installTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ar;->a()Lcom/tendcloud/tenddata/game/ar;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ar;->d(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "updateTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ar;->a()Lcom/tendcloud/tenddata/game/ar;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/ar;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dm;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->d:Lcom/tendcloud/tenddata/game/dm;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/df;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->d:Lcom/tendcloud/tenddata/game/dm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/dm;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dm;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dm;->d:Lcom/tendcloud/tenddata/game/dm;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->d:Lcom/tendcloud/tenddata/game/dm;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/a;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dm;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const-string v1, "appKey"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSubmitChannelId(Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dm;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/game/dm;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dm;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const-string v1, "channel"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/dm;->setAppChannel(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uniqueId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
