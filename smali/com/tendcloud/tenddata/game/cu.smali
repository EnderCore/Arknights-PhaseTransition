.class public Lcom/tendcloud/tenddata/game/cu;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cu;->a:Lcom/tendcloud/tenddata/game/cu;

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cu;->a()Lcom/tendcloud/tenddata/game/cu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cu;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/cu;->a:Lcom/tendcloud/tenddata/game/cu;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/cu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cu;->a:Lcom/tendcloud/tenddata/game/cu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/cu;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cu;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cu;->a:Lcom/tendcloud/tenddata/game/cu;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cu;->a:Lcom/tendcloud/tenddata/game/cu;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JLcom/tendcloud/tenddata/game/a;)V
    .locals 9

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "[Session] - New session!"

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Session] - Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/at;->e(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v6

    sub-long v2, p1, v6

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v4, p3}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {p1, p2, p3}, Lcom/tendcloud/tenddata/game/at;->a(JLcom/tendcloud/tenddata/game/a;)V

    invoke-static {v4, p3}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/tendcloud/tenddata/game/dj;->setSessionId(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/tendcloud/tenddata/game/dj;->setSessionStartTime(J)V

    new-instance v2, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v3, "session"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v3, "begin"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-string v5, "sessionId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "interval"

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    iput-object p3, v2, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/game/cu;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->e(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "APP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "APP_SQL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TRACKING"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-wide/16 v6, 0x1f4

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    const-wide/16 v0, -0x3e8

    :cond_1
    new-instance v3, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v6, "session"

    iput-object v6, v3, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v6, "end"

    iput-object v6, v3, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const-string v7, "sessionId"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "start"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v3, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    iput-object p1, v3, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cu;->b(Lcom/tendcloud/tenddata/game/a;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 4

    :try_start_0
    const-string v0, "occurTime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-static {v2, v3, v0}, Lcom/tendcloud/tenddata/game/at;->c(JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    new-instance v0, Lcom/tendcloud/tenddata/game/da;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/da;-><init>()V

    iput-object p1, v0, Lcom/tendcloud/tenddata/game/da;->a:Lcom/tendcloud/tenddata/game/a;

    sget-object v1, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/da;->b:Lcom/tendcloud/tenddata/game/da$a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/util/HashMap;)V
    .locals 10

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    const-string v1, "occurTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->e(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :goto_0
    sub-long v2, v6, v2

    const-wide/16 v8, 0x7530

    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->a(Lcom/tendcloud/tenddata/game/a;)V

    invoke-direct {p0, v6, v7, v0}, Lcom/tendcloud/tenddata/game/cu;->a(JLcom/tendcloud/tenddata/game/a;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->setLastActivity(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    const-string v1, "[Session] - Same session as before!"

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/dj;->setSessionId(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dj;->a()Lcom/tendcloud/tenddata/game/dj;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/tendcloud/tenddata/game/dj;->setSessionStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private final c(Ljava/util/HashMap;)V
    .locals 4

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    const-string v1, "occurTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "sessionEnd"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->a(Lcom/tendcloud/tenddata/game/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "pageName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pageName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/at;->setLastActivity(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->b(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v2, v3, v0}, Lcom/tendcloud/tenddata/game/at;->c(JLcom/tendcloud/tenddata/game/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->B:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 4

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/tendcloud/tenddata/game/cu;->a(JLcom/tendcloud/tenddata/game/a;)V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Ljava/util/HashMap;)V
    .locals 4

    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/tendcloud/tenddata/game/at;->c(JLcom/tendcloud/tenddata/game/a;)V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->a(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onTDEBEventSession(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    :try_start_1
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->c(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->d(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cu;->e(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
