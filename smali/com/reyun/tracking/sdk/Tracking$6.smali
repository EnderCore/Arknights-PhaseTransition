.class final Lcom/reyun/tracking/sdk/Tracking$6;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking;->exitSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->clearTasks()V

    sget-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunScreenObserver;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->stopScreenStateUpdate(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$600()Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$600()Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {v2}, Lcom/reyun/tracking/sdk/Tracking;->access$602(Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;)Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$800()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$800()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {v2}, Lcom/reyun/tracking/sdk/Tracking;->access$802(Ljava/util/Timer;)Ljava/util/Timer;

    :cond_1
    invoke-static {v2}, Lcom/reyun/tracking/sdk/Tracking;->access$602(Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;)Lcom/reyun/tracking/sdk/Tracking$HomeBtnBroadcastReceiver1;

    invoke-static {v2}, Lcom/reyun/tracking/sdk/Tracking;->access$002(Landroid/content/Context;)Landroid/content/Context;

    return-void

    :cond_2
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->interrupt()V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->close()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->access$402(Z)Z

    invoke-static {v2}, Lcom/reyun/tracking/sdk/Tracking;->access$702(Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;)Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;

    goto :goto_0
.end method
