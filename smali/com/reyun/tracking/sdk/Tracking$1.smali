.class final Lcom/reyun/tracking/sdk/Tracking$1;
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
    .locals 13

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "tracking_interval"

    const-string v10, "interval"

    invoke-static {v8, v9, v10, v6, v7}, Lcom/reyun/tracking/utils/Mysp;->AddLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "tracking_install"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_default_"

    invoke-static {v8, v9, v10, v11}, Lcom/reyun/tracking/utils/Mysp;->GetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "_default_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "tracking_install"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "intalled"

    invoke-static {v8, v9, v10, v11}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v8, "TrackingIO"

    const-string v9, "============send install event========="

    invoke-static {v8, v9}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "install"

    const-string v11, "unknown"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$200()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v8, :cond_4

    const/4 v4, 0x1

    :goto_2
    const-string v9, "install"

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-static {v9, v1, v8}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "receive/tkio/install"

    new-instance v10, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v11, "install"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v11, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v8, v9, v1, v10, v11}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "startup"

    const-string v11, "unknown"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$200()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/reyun/tracking/common/DataContextUtil;->createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/reyun/tracking/utils/AppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v8, :cond_6

    const/4 v4, 0x1

    :goto_5
    const-string v9, "startup"

    if-eqz v4, :cond_7

    const/4 v8, 0x1

    :goto_6
    invoke-static {v9, v1, v8}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v2

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "receive/tkio/startup"

    new-instance v10, Lcom/reyun/tracking/utils/TrackingHttpListener;

    const-string v11, "startup"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Lcom/reyun/tracking/utils/TrackingHttpListener;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    sget-object v11, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v8, v9, v1, v10, v11}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    :cond_3
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/reyun/tracking/sdk/Tracking;->startHeartBeat(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6
.end method
