.class final Lcom/reyun/tracking/sdk/Tracking$9;
.super Ljava/util/TimerTask;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking;->startHeartBeat(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->access$1200(I)V

    return-void
.end method
