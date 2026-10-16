.class public final Lcom/tendcloud/tenddata/game/cr;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Landroid/os/Handler; = null

.field static b:Landroid/os/HandlerThread; = null

.field private static final c:Ljava/lang/String; = "check_wifi_permission"

.field private static final d:Ljava/lang/String; = "check_bs_permission"

.field private static final e:Ljava/lang/String; = "check_gps_permission"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:J = 0x927c0L

.field private static volatile k:Lcom/tendcloud/tenddata/game/cr;

.field private static l:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->k:Lcom/tendcloud/tenddata/game/cr;

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->a:Landroid/os/Handler;

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->b:Landroid/os/HandlerThread;

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cr;->a()Lcom/tendcloud/tenddata/game/cr;

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
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "locHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/tendcloud/tenddata/game/cs;

    sget-object v1, Lcom/tendcloud/tenddata/game/cr;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/cs;-><init>(Lcom/tendcloud/tenddata/game/cr;Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cr;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->k:Lcom/tendcloud/tenddata/game/cr;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/cr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->k:Lcom/tendcloud/tenddata/game/cr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/cr;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cr;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->k:Lcom/tendcloud/tenddata/game/cr;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->k:Lcom/tendcloud/tenddata/game/cr;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/cr;)V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cr;->d()V

    return-void
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "check_wifi_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/tendcloud/tenddata/game/cr;->l:Landroid/net/wifi/WifiManager;

    sget-object v0, Lcom/tendcloud/tenddata/game/cr;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/cw;

    sget-object v1, Lcom/tendcloud/tenddata/game/cr;->l:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/cw;-><init>(Landroid/net/wifi/WifiManager;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/cr;)V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cr;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    const-wide/32 v2, 0x927c0

    const/4 v1, 0x2

    const-string v0, "check_gps_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v1, "locationUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/cr;)V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cr;->b()V

    return-void
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    const-string v0, "check_bs_permission"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    new-instance v1, Lcom/tendcloud/tenddata/game/cv;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cv;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(IJ)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/tendcloud/tenddata/game/cr;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x17

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_d

    move v3, v2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_2
    const-string v5, "check_bs_permission"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    :cond_1
    :goto_3
    return v2

    :catch_0
    move-exception v0

    move v3, v1

    :goto_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_c

    move v3, v2

    :goto_5
    :try_start_3
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v1

    :goto_6
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    const-string v3, "check_gps_permission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    const-string v3, "check_wifi_permission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    if-nez v0, :cond_1

    :cond_8
    move v2, v1

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_b
    move v4, v1

    goto :goto_2

    :cond_c
    move v3, v1

    goto :goto_5

    :cond_d
    move v3, v1

    goto/16 :goto_0
.end method

.method public final onTDEBEventLocationEvent(Lcom/tendcloud/tenddata/game/cy;)V
    .locals 0

    return-void
.end method
