.class public Lcom/reyun/tracking/utils/ReYunScreenObserver;
.super Ljava/lang/Object;
.source "ReYunScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;,
        Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;
    }
.end annotation


# static fields
.field private static sObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/reyun/tracking/common/ReYunConst$BusinessType;",
            "Lcom/reyun/tracking/utils/ReYunScreenObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

.field private mType:Lcom/reyun/tracking/common/ReYunConst$BusinessType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mFilter:Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mType:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/reyun/tracking/utils/ReYunScreenObserver;)Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenStateListener:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

    return-object v0
.end method

.method public static getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunScreenObserver;
    .locals 3

    sget-object v1, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/reyun/tracking/utils/ReYunScreenObserver;

    invoke-direct {v2, p0}, Lcom/reyun/tracking/utils/ReYunScreenObserver;-><init>(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/utils/ReYunScreenObserver;

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
.method public requestScreenStateUpdate(Landroid/content/Context;Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;)V
    .locals 3

    iput-object p2, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenStateListener:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/reyun/tracking/utils/ReYunScreenObserver;Lcom/reyun/tracking/utils/ReYunScreenObserver$1;)V

    iput-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScreenStateUpdate(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mScreenReceiver:Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;

    sget-object v1, Lcom/reyun/tracking/utils/ReYunScreenObserver;->sObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver;->mType:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
