.class final Lcom/reyun/tracking/sdk/Tracking$2;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$300()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$300()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 9

    const-string v3, ""

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v8, "ts"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const-string v8, ""

    if-ne v3, v8, :cond_0

    :goto_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v2, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$300()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v6, v4

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_0
.end method
