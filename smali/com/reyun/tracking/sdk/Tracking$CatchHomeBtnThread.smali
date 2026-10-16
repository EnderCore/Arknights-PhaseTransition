.class Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;
.super Ljava/lang/Thread;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/sdk/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CatchHomeBtnThread"
.end annotation


# instance fields
.field private volatile isThreadRun:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->isThreadRun:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->isThreadRun:Z

    return-void
.end method

.method public run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.GET_TASKS"

    invoke-static {v2, v3}, Lcom/reyun/tracking/common/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "TrackingIO"

    const-string v3, "======== lost permission android.permission.GET_TASKS ========="

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->isThreadRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->sleep(J)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$400()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$500()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/reyun/tracking/sdk/Tracking$CatchHomeBtnThread;->isThreadRun:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
