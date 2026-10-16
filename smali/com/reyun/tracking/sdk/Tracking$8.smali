.class final Lcom/reyun/tracking/sdk/Tracking$8;
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
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "from"

    const-string v5, "tkio"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, v0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->jsonStr:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/reyun/tracking/sdk/Tracking$8$1;

    invoke-direct {v2, p0, v0}, Lcom/reyun/tracking/sdk/Tracking$8$1;-><init>(Lcom/reyun/tracking/sdk/Tracking$8;Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v4

    const-string v5, "receive/batch"

    sget-object v6, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v4, v5, v3, v2, v6}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->postBatchJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
