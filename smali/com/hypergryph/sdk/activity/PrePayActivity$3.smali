.class Lcom/hypergryph/sdk/activity/PrePayActivity$3;
.super Lcom/hypergryph/sdk/HGCallbacks$Network;
.source "PrePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;->_payViaWechat()V
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
    .line 267
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-direct {p0}, Lcom/hypergryph/sdk/HGCallbacks$Network;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "errorInfo"    # Ljava/lang/String;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v0, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onRequest()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v2, "request":Lorg/json/JSONObject;
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->payInput()Lcom/hypergryph/sdk/HGModels$PayInput;

    move-result-object v1

    .line 273
    .local v1, "payInput":Lcom/hypergryph/sdk/HGModels$PayInput;
    :try_start_0
    const-string v4, "token"

    iget-object v5, v1, Lcom/hypergryph/sdk/HGModels$PayInput;->token:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v4, "version"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->version()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v4, "orderId"

    iget-object v5, v1, Lcom/hypergryph/sdk/HGModels$PayInput;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v4, "time"

    invoke-static {}, Lcom/hypergryph/sdk/utils/TimeUtil;->timestamp()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 278
    invoke-static {v2}, Lcom/hypergryph/sdk/utils/TextUtils;->genRequestSign(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 11
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "errorInfo":Ljava/lang/String;
    iget-object v7, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v7, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$400(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 289
    iget-object v7, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v7, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 295
    .local v4, "payReq":Lcom/tencent/mm/opensdk/modelpay/PayReq;
    const/4 v3, 0x0

    .line 297
    .local v3, "isSuc":Z
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v6, "response":Lorg/json/JSONObject;
    const-string v7, "requestObj"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 299
    .local v5, "requestObj":Lorg/json/JSONObject;
    const-string v7, "appid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 300
    const-string v7, "partnerid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 301
    const-string v7, "prepayid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 302
    const-string v7, "package"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 303
    const-string v7, "noncestr"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 304
    const-string v7, "timestamp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 305
    const-string v7, "sign"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v3, 0x1

    .line 311
    .end local v5    # "requestObj":Lorg/json/JSONObject;
    .end local v6    # "response":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_1

    .line 312
    new-instance v2, Lcom/hypergryph/sdk/BridgeContext$Input;

    invoke-direct {v2}, Lcom/hypergryph/sdk/BridgeContext$Input;-><init>()V

    .line 313
    .local v2, "input":Lcom/hypergryph/sdk/BridgeContext$Input;
    sget-object v7, Lcom/hypergryph/sdk/BridgeContext$PayType;->WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;

    iput-object v7, v2, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    .line 314
    iput-object v4, v2, Lcom/hypergryph/sdk/BridgeContext$Input;->wechatPayReq:Lcom/tencent/mm/opensdk/modelpay/PayReq;

    .line 315
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v7

    iput-object v2, v7, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    .line 316
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v7

    iput-boolean v10, v7, Lcom/hypergryph/sdk/BridgeContext;->isTriggeringBridge:Z

    .line 317
    iget-object v7, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v7}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$600(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    goto :goto_0

    .line 307
    .end local v2    # "input":Lcom/hypergryph/sdk/BridgeContext$Input;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "HGSDK"

    const-string v8, "Pay failed with order response : %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$3;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v8, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v8, v8, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_CREATE_ORDER_RESPONSE_ERROR:I

    invoke-static {v8}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
