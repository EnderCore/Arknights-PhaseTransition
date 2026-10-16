.class public Lcom/tendcloud/tenddata/game/dj;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# static fields
.field static a:Lcom/tendcloud/tenddata/game/dj;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tendcloud/tenddata/game/dj;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/dj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/dj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/dj;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dj;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/dj;

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/dj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setAccount(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "account"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAntiCheatingstatus(I)V
    .locals 2

    const-string v0, "antiCheating"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentPageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "page"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deeplink"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->setDeepLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionStartTime(J)V
    .locals 3

    const-string v0, "sessionStartTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubaccount(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "subaccount"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
