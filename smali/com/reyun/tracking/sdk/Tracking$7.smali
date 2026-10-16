.class final Lcom/reyun/tracking/sdk/Tracking$7;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking;->sendFailureRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$record_count:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/reyun/tracking/sdk/Tracking$7;->val$record_count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v1, p0, Lcom/reyun/tracking/sdk/Tracking$7;->val$record_count:I

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1000(I)Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->idList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "TrackingIO"

    const-string v2, "There is no more data need to resend."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1100()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1100()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/reyun/tracking/sdk/Tracking$7;->val$record_count:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
