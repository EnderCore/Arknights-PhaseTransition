.class Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;
.super Landroid/content/BroadcastReceiver;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/sdk/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeBtnBroadcastReceiver1"
.end annotation


# instance fields
.field final SYSTEM_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_RECENT_APPS:Ljava/lang/String;

.field private action:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;->action:Ljava/lang/String;

    const-string v0, "homekey"

    iput-object v0, p0, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;->SYSTEM_HOME_KEY:Ljava/lang/String;

    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;->SYSTEM_RECENT_APPS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/sdk/Tracking$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;->action:Ljava/lang/String;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    iget-object v3, p0, Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;->action:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TrackingIO"

    const-string v4, "=========== pressed home button ==========="

    invoke-static {v3, v4}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TrackingIO"

    const-string v4, "=========== long pressed home button ==========="

    invoke-static {v3, v4}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
