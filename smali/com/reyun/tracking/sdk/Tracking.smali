.class public Lcom/reyun/tracking/sdk/Tracking;
.super Ljava/lang/Object;
.source "Tracking.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;,
        Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;,
        Lcom/reyun/tracking/sdk/Tracking$CurrencyType;,
        Lcom/reyun/tracking/sdk/Tracking$PymentType;,
        Lcom/reyun/tracking/sdk/Tracking$API;
    }
.end annotation


# static fields
.field private static final HEART_BEAT_TIME:I

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field public static final KEY_TIME_TRACK:Ljava/lang/String; = "time_track"

.field public static SEND_DATA_WITH_HEARTBEAT:Z = false

.field private static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "TrackingIO"

.field private static final VALUE_FROM:Ljava/lang/String; = "tkio"

.field public static final XML_INSTALL:Ljava/lang/String; = "tracking_install"

.field public static final XML_INTERVAL:Ljava/lang/String; = "tracking_interval"

.field public static final XML_LOGIN:Ljava/lang/String; = "tracking_login"

.field public static final XML_PKG_INFO:Ljava/lang/String; = "tracking_pkgInfo"

.field private static volatile isSdkExit:Z

.field private static m_appKey:Ljava/lang/String;

.field private static m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

.field private static m_channelid:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;

.field private static m_heartBeatTimer1:Ljava/util/Timer;

.field private static myTimehandler:Landroid/os/Handler;

.field private static my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

.field private static my_timerTask1:Ljava/util/TimerTask;

.field private static mydbhandler:Landroid/os/Handler;

.field private static myhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v2, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v0, "_default_"

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    sput-boolean v2, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    sget-boolean v0, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7530

    :goto_0
    sput v0, Lcom/reyun/tracking/sdk/Tracking;->HEART_BEAT_TIME:I

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/Tracking$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->myTimehandler:Landroid/os/Handler;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/Tracking$5;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->myhandler:Landroid/os/Handler;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/Tracking$8;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->mydbhandler:Landroid/os/Handler;

    return-void

    :cond_0
    const v0, 0x493e0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
    .locals 1

    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->queryRecordFromDatabase(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->mydbhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(I)V
    .locals 0

    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->sendFailureRecord(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->myTimehandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->myhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    return-object v0
.end method

.method static synthetic access$602(Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;)Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    return-object p0
.end method

.method static synthetic access$700()Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;)Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    return-object p0
.end method

.method public static addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J
    .locals 9

    :try_start_0
    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->jsonObjToByteArray(Lorg/json/JSONObject;)[B

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "what"

    invoke-virtual {v3, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v7, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v6, v7}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->insert(Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v2

    const-string v6, "TrackingIO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in addRecordToDbase:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/reyun/tracking/common/CommonUtil;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static deleteRecordFromDatabase(J)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v2, v3}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->deleteFromById(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TrackingIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in deleteRecordFromDatabase:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/reyun/tracking/common/CommonUtil;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static exitSdk()V
    .locals 4

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->sendGyroData()V

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->sendEleData()V

    sget-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/reyun/tracking/sdk/Tracking$6;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/Tracking$6;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableWithDelaySafely(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/reyun/tracking/common/CommonUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initWithKeyAndChannelId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sput-object p1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TrackingIO"

    const-string v2, "Your appKey is incorrect! init failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "unknown"

    const-string v2, "initWithKeyAndChannelId : channelid is NULL"

    invoke-static {p2, v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$2;

    invoke-direct {v0}, Lcom/reyun/tracking/sdk/Tracking$2;-><init>()V

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "receive/gettime"

    sget-object v3, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v1, v2, v0, v3}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->get(Landroid/content/Context;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    new-instance v1, Lcom/reyun/tracking/sdk/Tracking$3;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/Tracking$3;-><init>()V

    invoke-static {v1}, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->createExceptionHandler(Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;)V

    const-class v1, Lcom/reyun/tracking/sdk/Tracking;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@@@@@@@@@@@@@@@@requestUpdateLocationOnce"

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->getInstance(Landroid/content/Context;)Lcom/reyun/tracking/utils/ReYunLocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->requestUpdateLocationOnce()V

    sget-object v1, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->startCheckBatteryHandler(Lcom/reyun/tracking/common/ReYunConst$BusinessType;Landroid/content/Context;)V

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/reyun/tracking/common/CommonUtil;->startCheckSensorEvent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isAppOnForeground()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v7, :cond_3

    sget-boolean v6, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-ne v6, v4, :cond_0

    const-string v4, "TrackingIO"

    const-string v6, "appProcess.processName is null!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "TrackingIO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAppOnForeground!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v7, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v7, :cond_4

    sget-boolean v6, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-ne v6, v4, :cond_0

    const-string v4, "TrackingIO"

    const-string v6, "=====m_context is null!===="

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0x64

    if-ne v6, v7, :cond_5

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1
.end method

.method private static jsonObjToByteArray(Lorg/json/JSONObject;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method private static queryRecordFromDatabase(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
    .locals 5

    :try_start_0
    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v4, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v3, v4}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->queryDataFromWithLimit(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sdkListenerHomeBtn()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;-><init>(Lcom/reyun/tracking/sdk/Tracking$1;)V

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static sendFailureRecord(I)V
    .locals 4

    const-string v1, "TAG"

    const-string v2, "\u53d1\u9001\u5931\u8d25\u7684\u6570\u636e"

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/reyun/tracking/sdk/Tracking$7;

    invoke-direct {v2, p0}, Lcom/reyun/tracking/sdk/Tracking$7;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TrackingIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFailureRecord!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    return-void
.end method

.method public static setEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v6, "TrackingIO"

    const-string v7, "setEvent Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/reyun/tracking/common/CommonUtil;->checkMapsKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v6, "TrackingIO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEvent Error: Invalid key of map "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v8, "unknown"

    const-string v9, "\u8c03\u7528setEvent\u65f6 eventName \u4e3a\u7a7a"

    invoke-static {p0, v8, v9}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "unknown"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "TrackingIO"

    const-string v7, "setEvent Error: param eventName cannot be NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v8, "electricityDataEvent"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "gyroDataEvent"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "paymentStart"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "exception"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "order"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    :goto_1
    :try_start_0
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v9, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v10, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v11, "tracking_login"

    const-string v12, "account"

    const-string v13, "unknown"

    invoke-static {v10, v11, v12, v13}, Lcom/reyun/tracking/utils/Mysp;->GetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v8, v9, v5, v10, v11}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/reyun/tracking/common/CommonUtil;->AddMapToJSONObject(Ljava/util/Map;Lorg/json/JSONObject;)V

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v8}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v8, :cond_9

    move v4, v6

    :goto_2
    const-string v8, "userEvent"

    if-eqz v4, :cond_a

    :goto_3
    invoke-static {v8, v1, v6}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v2

    if-eqz v4, :cond_0

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v7, "receive/tkio/event"

    new-instance v8, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v9, "userEvent"

    sget-object v10, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-direct {v8, v9, v10, v2, v3}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v9, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v6, v7, v1, v8, v9}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_0

    :cond_6
    const-string v8, "^event_([1-9]|1[0-2])$"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v6, "TrackingIO"

    const-string v7, "setEvent Error: only surported eventName: event1 - event12"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_8
    const-string v8, "_isReyunDefaultEvent"

    const-string v9, "1"

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    move v4, v7

    goto :goto_2

    :cond_a
    move v6, v7

    goto :goto_3
.end method

.method public static setEventJsonString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLoginSuccessBusiness(Ljava/lang/String;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v8, :cond_0

    const-string v6, "TrackingIO"

    const-string v7, "setLoginSuccessBusiness Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v6, "TrackingIO"

    const-string v7, "setLoginSuccessBusiness Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v8, "unknown"

    const-string v9, "setRegisterWithAccountID Warning: param account is NULL"

    invoke-static {p0, v8, v9}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v9, "tracking_login"

    const-string v10, "account"

    invoke-static {v8, v9, v10, v5}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    :try_start_0
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v9, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v10, "loggedin"

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v8, v9, v10, v5, v11}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v8}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v8, :cond_4

    move v4, v6

    :goto_2
    const-string v8, "loggedin"

    if-eqz v4, :cond_2

    move v7, v6

    :cond_2
    invoke-static {v8, v1, v7}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v2

    if-eqz v4, :cond_3

    sget-object v7, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v8, "receive/tkio/loggedin"

    new-instance v9, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v10, "login"

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-direct {v9, v10, v11, v2, v3}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v10, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v7, v8, v1, v9, v10}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_5

    new-instance v7, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    invoke-direct {v7}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;-><init>()V

    sput-object v7, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    sget-object v7, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    invoke-virtual {v7, v6}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->setDaemon(Z)V

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    invoke-virtual {v6}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->start()V

    :goto_3
    sget-object v6, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v6}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunScreenObserver;

    move-result-object v6

    sget-object v7, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    new-instance v8, Lcom/reyun/tracking/sdk/Tracking$4;

    invoke-direct {v8}, Lcom/reyun/tracking/sdk/Tracking$4;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->requestScreenStateUpdate(Landroid/content/Context;Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->sdkListenerHomeBtn()V

    goto :goto_3
.end method

.method public static setOrder(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 5

    const-string v3, "unknown"

    const-string v4, "\u8c03\u7528 setOrder\u65f6 transactionId \u4e3a\u7a7a"

    invoke-static {p0, v3, v4}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TrackingIO"

    const-string v4, "setOrder Error: param transactionId cannot be NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "unknown"

    const-string v4, "\u8c03\u7528 setPayment\u65f6 paymentType \u4e3a\u7a7a"

    invoke-static {p1, v3, v4}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TrackingIO"

    const-string v4, "setOrder Error: param currencyType cannot be NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    const-string v3, "TrackingIO"

    const-string v4, "setOrder Error: param currencyAmount cannot <= 0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "_transactionId"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_currencytype"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_currencyAmount"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "order"

    invoke-static {v3, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 18

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v11, :cond_1

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v11}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v11, "unknown"

    const-string v12, "\u8c03\u7528 setPayment\u65f6 transactionId \u4e3a\u7a7a"

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "unknown"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error: param transactionId cannot be NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v11, "unknown"

    const-string v12, "\u8c03\u7528 setPayment\u65f6 paymentType \u4e3a\u7a7a"

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "unknown"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error: param paymentType cannot be NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v11, "unknown"

    const-string v12, "\u8c03\u7528 setPayment\u65f6 currencyType \u4e3a\u7a7a"

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "unknown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error:param  currencyType cannot be NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    cmpg-float v11, p3, v11

    if-gtz v11, :cond_6

    const-string v11, "TrackingIO"

    const-string v12, "setPayment Error: param currencyAmount cannot <= 0"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :try_start_0
    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v12, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v13, "payment"

    sget-object v14, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v15, "tracking_login"

    const-string v16, "account"

    const-string v17, "unknown"

    invoke-static/range {v14 .. v17}, Lcom/reyun/tracking/utils/Mysp;->GetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v11, v12, v13, v14, v15}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    :try_start_1
    const-string v11, "context"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v11, "_transactionId"

    invoke-virtual {v2, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "_paymentType"

    invoke-virtual {v2, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "_currencytype"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "_currencyAmount"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    if-eqz v4, :cond_0

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v11}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v11, :cond_8

    const/4 v5, 0x1

    :goto_3
    const-string v12, "payment"

    if-eqz v5, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-static {v12, v4, v11}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v6

    if-eqz v5, :cond_0

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v12, "receive/tkio/payment"

    new-instance v13, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v14, "payment"

    sget-object v15, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-direct {v13, v14, v15, v6, v7}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v14, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v11, v12, v4, v13, v14}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method public static setPaymentStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v4, :cond_0

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "unknown"

    const-string v5, "\u8c03\u7528 setPaymentStart\u65f6 transactionId \u4e3a\u7a7a"

    invoke-static {p0, v4, v5}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "unknown"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: param transactionId cannot be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "unknown"

    const-string v5, "\u8c03\u7528 setPaymentStart\u65f6 paymentType \u4e3a\u7a7a"

    invoke-static {p1, v4, v5}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "unknown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: param paymentType cannot be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "unknown"

    const-string v5, "\u8c03\u7528 setPaymentStart\u65f6 currencyType \u4e3a\u7a7a"

    invoke-static {p2, v4, v5}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: param currencyType cannot be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_5

    const-string v4, "TrackingIO"

    const-string v5, "setPaymentStart Error: param currencyamount cannot <= 0"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "_transactionId"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "_paymentType"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "_currencytype"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "_currencyAmount"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "paymentStart"

    invoke-static {v4, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static setRegisterWithAccountID(Ljava/lang/String;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v8, :cond_1

    const-string v6, "TrackingIO"

    const-string v7, "setRegisterWithAccountID Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/reyun/tracking/common/CommonUtil;->checkAppid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v6, "TrackingIO"

    const-string v7, "setRegisterWithAccountID Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v8, "unknown"

    const-string v9, "setRegisterWithAccountID Warning: param account is NULL"

    invoke-static {p0, v8, v9}, Lcom/reyun/tracking/common/CommonUtil;->checkStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "unknown"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "TrackingIO"

    const-string v7, "setRegisterWithAccountID Error: param account cannot be NULL! Upload register data failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v9, "tracking_login"

    const-string v10, "account"

    invoke-static {v8, v9, v10, v5}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    :try_start_0
    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v9, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v10, "register"

    sget-object v11, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v8, v9, v10, v5, v11}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    sget-object v8, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v8}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v8, :cond_4

    move v4, v6

    :goto_2
    const-string v8, "register"

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v8, v1, v6}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v2

    if-eqz v4, :cond_0

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v7, "receive/tkio/register"

    new-instance v8, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v9, "register"

    sget-object v10, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-direct {v8, v9, v10, v2, v3}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v9, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v6, v7, v1, v8, v9}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3
.end method

.method public static startHeartBeat(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    :goto_1
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$9;

    invoke-direct {v0}, Lcom/reyun/tracking/sdk/Tracking$9;-><init>()V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    :cond_2
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    sget v4, Lcom/reyun/tracking/sdk/Tracking;->HEART_BEAT_TIME:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    goto :goto_1
.end method

.method public static stopHeartBeat()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TrackingIO"

    const-string v1, "=============\u505c\u4e0b\u6765\u4e86==========="

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method
