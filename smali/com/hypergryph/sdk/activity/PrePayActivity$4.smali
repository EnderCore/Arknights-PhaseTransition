.class Lcom/hypergryph/sdk/activity/PrePayActivity$4;
.super Lcom/hypergryph/sdk/HGCallbacks$Network;
.source "PrePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;->_payViaAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/PrePayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-direct {p0}, Lcom/hypergryph/sdk/HGCallbacks$Network;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "errorInfo"    # Ljava/lang/String;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v0, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onRequest()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 333
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v2, "request":Lorg/json/JSONObject;
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->payInput()Lcom/hypergryph/sdk/HGModels$PayInput;

    move-result-object v1

    .line 336
    .local v1, "payInput":Lcom/hypergryph/sdk/HGModels$PayInput;
    :try_start_0
    const-string v4, "token"

    iget-object v5, v1, Lcom/hypergryph/sdk/HGModels$PayInput;->token:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v4, "version"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->version()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v4, "orderId"

    iget-object v5, v1, Lcom/hypergryph/sdk/HGModels$PayInput;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v4, "time"

    invoke-static {}, Lcom/hypergryph/sdk/utils/TimeUtil;->timestamp()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 341
    invoke-static {v2}, Lcom/hypergryph/sdk/utils/TextUtils;->genRequestSign(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 10
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "errorInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v6, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$400(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v6, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v3, 0x0

    .line 357
    .local v3, "isSuc":Z
    const/4 v4, 0x0

    .line 359
    .local v4, "orderInfo":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 360
    .local v5, "response":Lorg/json/JSONObject;
    const-string v6, "qs"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 361
    const/4 v3, 0x1

    .line 366
    .end local v5    # "response":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_1

    .line 368
    new-instance v2, Lcom/hypergryph/sdk/BridgeContext$Input;

    invoke-direct {v2}, Lcom/hypergryph/sdk/BridgeContext$Input;-><init>()V

    .line 369
    .local v2, "input":Lcom/hypergryph/sdk/BridgeContext$Input;
    sget-object v6, Lcom/hypergryph/sdk/BridgeContext$PayType;->ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

    iput-object v6, v2, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    .line 370
    iput-object v4, v2, Lcom/hypergryph/sdk/BridgeContext$Input;->alipayOrderInfo:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v6

    iput-object v2, v6, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    .line 372
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v6

    iput-boolean v9, v6, Lcom/hypergryph/sdk/BridgeContext;->isTriggeringBridge:Z

    .line 373
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v6}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$600(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    goto :goto_0

    .line 362
    .end local v2    # "input":Lcom/hypergryph/sdk/BridgeContext$Input;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HGSDK"

    const-string v7, "Pay failed with order response : %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$4;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v7, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v7, v7, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_ALIPAY_PAY_CREATE_ORDER_RESPONSE_ERROR:I

    invoke-static {v7}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
