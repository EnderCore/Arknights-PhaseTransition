.class final Lcom/tendcloud/tenddata/game/cw;
.super Landroid/content/BroadcastReceiver;
.source "td"


# instance fields
.field a:Lcom/tendcloud/tenddata/game/ci;

.field b:Ljava/util/ArrayList;

.field c:Lorg/json/JSONArray;

.field d:Lcom/tendcloud/tenddata/game/ch;

.field e:Lcom/tendcloud/tenddata/game/ch;

.field f:J

.field g:J

.field private h:J

.field private i:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->a:Lcom/tendcloud/tenddata/game/ci;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/cw;->f:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/cw;->g:J

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cw;->h:J

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cw;->i:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/cw;)J
    .locals 2

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cw;->h:J

    return-wide v0
.end method

.method private a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ch;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v0, Lcom/tendcloud/tenddata/game/cd;

    const-string v1, "SSID"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSSID"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/cd;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ch;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ch;-><init>()V

    invoke-virtual {v0, v7}, Lcom/tendcloud/tenddata/game/ch;->setBsslist(Ljava/util/List;)V

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method private a()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v1, "wifiUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

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

.method private b()Lcom/tendcloud/tenddata/game/ch;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->c:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cw;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/cw;)Lcom/tendcloud/tenddata/game/ch;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cw;->b()Lcom/tendcloud/tenddata/game/ch;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/tendcloud/tenddata/game/ch;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x4b

    if-ge v0, v3, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "SSID"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "BSSID"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "level"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->e:Lcom/tendcloud/tenddata/game/ch;

    return-object v0

    :cond_2
    :try_start_3
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/cw;->c:Lorg/json/JSONArray;

    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/game/cw;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->e:Lcom/tendcloud/tenddata/game/ch;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/cw;)V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cw;->a()V

    return-void
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/game/cw;)Lcom/tendcloud/tenddata/game/ch;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cw;->c()Lcom/tendcloud/tenddata/game/ch;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/game/cx;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cx;-><init>(Lcom/tendcloud/tenddata/game/cw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
