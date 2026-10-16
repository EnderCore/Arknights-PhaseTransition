.class public Lcom/hypergryph/sdk/activity/PrePayActivity;
.super Lcom/hypergryph/sdk/activity/BaseActivity;
.source "PrePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;
    }
.end annotation


# static fields
.field private static final THREAD_WAIT_INTERVAL:I = 0x3c

.field private static volatile s_instance:Lcom/hypergryph/sdk/activity/PrePayActivity;


# instance fields
.field private m_buttonListeners:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/hypergryph/sdk/activity/PrePayActivity$1;

    invoke-direct {v0, p0}, Lcom/hypergryph/sdk/activity/PrePayActivity$1;-><init>(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity;->m_buttonListeners:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private _CheckAlipayPayResult(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "alipayResult"    # Ljava/lang/String;
    .param p2, "isEnsuredSuc"    # Z

    .prologue
    .line 417
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hypergryph/sdk/HGSDK;->confirmAlipayUrl()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 420
    .local v1, "request":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "token"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->payInput()Lcom/hypergryph/sdk/HGModels$PayInput;

    move-result-object v4

    iget-object v4, v4, Lcom/hypergryph/sdk/HGModels$PayInput;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v3, "version"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->version()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v3, "orderId"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v3, "result"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v4, "resultStatus"

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_confirmOrderService(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 429
    return-void

    .line 424
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _CheckWechatPayResult()V
    .locals 5

    .prologue
    .line 403
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hypergryph/sdk/HGSDK;->confirmWechatUrl()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 406
    .local v1, "request":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "token"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->payInput()Lcom/hypergryph/sdk/HGModels$PayInput;

    move-result-object v4

    iget-object v4, v4, Lcom/hypergryph/sdk/HGModels$PayInput;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v3, "version"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->version()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v3, "orderId"

    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hypergryph/sdk/HGSDK;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v3, "resultStatus"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_confirmOrderService(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 414
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _cancelPayment()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/hypergryph/sdk/HGError;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGError;-><init>()V

    .line 242
    .local v0, "error":Lcom/hypergryph/sdk/HGError;
    sget-object v1, Lcom/hypergryph/sdk/HGError$Type;->USER_CANCELED:Lcom/hypergryph/sdk/HGError$Type;

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->type:Lcom/hypergryph/sdk/HGError$Type;

    .line 243
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_PAY_USER_CANCELED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hypergryph/sdk/HGSDK;->notifyPaymentFail(Lcom/hypergryph/sdk/HGError;)V

    .line 245
    return-void
.end method

.method private _checkCreateOrderResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, "errorCode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "err"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    const-string v3, "err"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    sget-object v3, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v3, v3, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CREATE_ORDER_SERVICE_ERROR:I

    invoke-static {v3}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 445
    :goto_1
    return-object v3

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "ignore":Ljava/lang/Exception;
    const-string v3, "HGSDK"

    const-string v4, "Create order service failed with content: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v0, "-1"

    goto :goto_0

    .line 445
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private _confirmOrderService(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    new-instance v0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/hypergryph/sdk/activity/PrePayActivity$2;-><init>(Lcom/hypergryph/sdk/activity/PrePayActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->sendService(Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)Z

    .line 184
    return-void
.end method

.method private _handleAlipayResult(Lcom/hypergryph/sdk/alipay/AliPayResult;)V
    .locals 6
    .param p1, "result"    # Lcom/hypergryph/sdk/alipay/AliPayResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "HGSDK"

    const-string v1, "Pay result from alipay : %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->CheckIfNeedConfirmOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->CheckEnsuredSuc()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_CheckAlipayPayResult(Ljava/lang/String;Z)V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->CheckIfUserCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->finish()V

    .line 47
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_cancelPayment()V

    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_ALIPAY_INTERNAL_ERROR:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/hypergryph/sdk/alipay/AliPayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 49
    invoke-static {v0, v1}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyCreateOrderOrPayFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _handleWechatResult(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 66
    :pswitch_0
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_FAILED_WITH_ERROR:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyCreateOrderOrPayFailed(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_1
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_CheckWechatPayResult()V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->finish()V

    .line 61
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_cancelPayment()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _initViews()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 234
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->layout:Lcom/hypergryph/sdk/utils/Res$Layout;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$Layout;->PANEL_PREPAY:I

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->setContentView(I)V

    .line 235
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_PAYMENT_CANCEL:I

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity;->m_buttonListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_ALIPAY:I

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity;->m_buttonListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_WECHAT:I

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity;->m_buttonListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method private _notifyConfirmPayError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alert"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Lcom/hypergryph/sdk/activity/PrePayActivity$5;

    invoke-direct {v0, p0, p2}, Lcom/hypergryph/sdk/activity/PrePayActivity$5;-><init>(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->alert(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method private _notifyConfirmPaySuc(Z)V
    .locals 1
    .param p1, "isConfirmed"    # Z

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->finish()V

    .line 387
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hypergryph/sdk/HGSDK;->notifyPaymentSucceed(Z)V

    .line 388
    return-void
.end method

.method private _notifyCreateOrderOrPayFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->finish()V

    .line 249
    new-instance v0, Lcom/hypergryph/sdk/HGError;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGError;-><init>()V

    .line 250
    .local v0, "error":Lcom/hypergryph/sdk/HGError;
    sget-object v1, Lcom/hypergryph/sdk/HGError$Type;->INTERNAL_ERROR:Lcom/hypergryph/sdk/HGError$Type;

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->type:Lcom/hypergryph/sdk/HGError$Type;

    .line 251
    iput-object p1, v0, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    .line 252
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hypergryph/sdk/HGSDK;->notifyPaymentFail(Lcom/hypergryph/sdk/HGError;)V

    .line 253
    return-void
.end method

.method private _payViaAlipay()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->payAlipayUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hypergryph/sdk/activity/PrePayActivity$4;

    invoke-direct {v1, p0}, Lcom/hypergryph/sdk/activity/PrePayActivity$4;-><init>(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->sendService(Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)Z

    .line 383
    return-void
.end method

.method private _payViaWechat()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 256
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hypergryph/sdk/HGSDK;->getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 258
    .local v0, "wxapi":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_NOT_INSTALLED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v1

    const v2, 0x22000001

    if-ge v1, v2, :cond_1

    .line 262
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_NOT_SUPPORTED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hypergryph/sdk/HGSDK;->payWechatUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hypergryph/sdk/activity/PrePayActivity$3;

    invoke-direct {v2, p0}, Lcom/hypergryph/sdk/activity/PrePayActivity$3;-><init>(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/hypergryph/sdk/activity/PrePayActivity;->sendService(Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)Z

    goto :goto_0
.end method

.method private _startBridgeActivity()V
    .locals 3

    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 451
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/hypergryph/sdk/activity/BridgeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_IN:I

    sget-object v2, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v2, v2, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_STAY:I

    invoke-virtual {p0, v1, v2}, Lcom/hypergryph/sdk/activity/PrePayActivity;->overridePendingTransition(II)V

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/hypergryph/sdk/activity/PrePayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_payViaAlipay()V

    return-void
.end method

.method static synthetic access$100(Lcom/hypergryph/sdk/activity/PrePayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_payViaWechat()V

    return-void
.end method

.method static synthetic access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyConfirmPaySuc(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyConfirmPayError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_checkCreateOrderResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyCreateOrderOrPayFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/hypergryph/sdk/activity/PrePayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_startBridgeActivity()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->finish()V

    .line 229
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_STAY:I

    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_OUT:I

    invoke-virtual {p0, v0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->overridePendingTransition(II)V

    .line 230
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->onBackPressed()V

    .line 223
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_cancelPayment()V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInst"    # Landroid/os/Bundle;

    .prologue
    .line 188
    sput-object p0, Lcom/hypergryph/sdk/activity/PrePayActivity;->s_instance:Lcom/hypergryph/sdk/activity/PrePayActivity;

    .line 189
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->Reset()V

    .line 190
    invoke-super {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->initIfNot(Landroid/content/Context;)V

    .line 192
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_initViews()V

    .line 193
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/hypergryph/sdk/activity/PrePayActivity;->s_instance:Lcom/hypergryph/sdk/activity/PrePayActivity;

    if-ne v0, p0, :cond_0

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/hypergryph/sdk/activity/PrePayActivity;->s_instance:Lcom/hypergryph/sdk/activity/PrePayActivity;

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->onDestroy()V

    .line 216
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->notifyPrePayActivityClosed()V

    .line 217
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->onStart()V

    .line 199
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v0

    .line 200
    .local v0, "context":Lcom/hypergryph/sdk/BridgeContext;
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    iget-boolean v1, v1, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    .line 202
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    sget-object v2, Lcom/hypergryph/sdk/BridgeContext$PayType;->ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

    if-ne v1, v2, :cond_1

    .line 203
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext$Output;->alipayResult:Lcom/hypergryph/sdk/alipay/AliPayResult;

    invoke-direct {p0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_handleAlipayResult(Lcom/hypergryph/sdk/alipay/AliPayResult;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    sget-object v2, Lcom/hypergryph/sdk/BridgeContext$PayType;->WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;

    if-ne v1, v2, :cond_0

    .line 205
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    iget v1, v1, Lcom/hypergryph/sdk/BridgeContext$Output;->wechatResultCode:I

    invoke-direct {p0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->_handleWechatResult(I)V

    goto :goto_0
.end method
