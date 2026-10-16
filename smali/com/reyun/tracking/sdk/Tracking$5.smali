.class final Lcom/reyun/tracking/sdk/Tracking$5;
.super Landroid/os/Handler;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/sdk/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "TrackingIO"

    const-string v1, "4.0 Home is Pressed+++++++++++++++++"

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    return-void
.end method
