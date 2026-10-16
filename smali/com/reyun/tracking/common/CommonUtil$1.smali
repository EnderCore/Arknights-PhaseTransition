.class final Lcom/reyun/tracking/common/CommonUtil$1;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/common/CommonUtil;->startCheckBatteryHandler(Lcom/reyun/tracking/common/ReYunConst$BusinessType;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/reyun/tracking/sdk/ReYunWorkHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/reyun/tracking/sdk/ReYunWorkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/common/CommonUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/reyun/tracking/common/CommonUtil$1;->val$handler:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v5, p0, Lcom/reyun/tracking/common/CommonUtil$1;->val$context:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "scale"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float v3, v5, v6

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$000()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/reyun/tracking/common/CommonUtil;->access$002(F)F

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$100()Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$000()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/reyun/tracking/common/CommonUtil$1;->val$handler:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, p0, v6, v7}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableWithDelaySafely(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/reyun/tracking/common/CommonUtil;->access$002(F)F

    :try_start_1
    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$100()Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$000()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->access$200()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->sendEleData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/reyun/tracking/common/CommonUtil;->access$202(J)J

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v5}, Lcom/reyun/tracking/common/CommonUtil;->access$102(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
