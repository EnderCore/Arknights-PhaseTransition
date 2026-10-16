.class public final Lcom/tendcloud/tenddata/TalkingDataGA;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final DEBUG:Z = false

.field public static final PLATFORM_TYPE_AIR:I = 0x3

.field public static final PLATFORM_TYPE_COCOS2DX:I = 0x1

.field public static final PLATFORM_TYPE_NATIVE:I = 0x0

.field public static final PLATFORM_TYPE_PHONEGAP:I = 0x4

.field public static final PLATFORM_TYPE_UNITY:I = 0x2

.field private static final a:Ljava/lang/String; = "TDGA"

.field public static sPlatformType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPlatformType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static callNullMethod()Ljava/lang/String;
    .locals 2

    const-string v0, "TDGA"

    const-string v1, "null method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/TalkingDataGA;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onKill()V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ac;->onKill(Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static removeGlobalKV(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static setGlobalKV(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static setVerboseLogDisabled()V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->c()V

    return-void
.end method
