.class public Lcom/hypergryph/sdk/activity/BridgeActivity;
.super Lcom/hypergryph/sdk/activity/BaseActivity;
.source "BridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;
    }
.end annotation


# static fields
.field private static final ALIPAY_SDK_PAY_FLAG:I = 0x1


# instance fields
.field private m_weixinReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/hypergryph/sdk/activity/BridgeActivity$1;

    invoke-direct {v0, p0}, Lcom/hypergryph/sdk/activity/BridgeActivity$1;-><init>(Lcom/hypergryph/sdk/activity/BridgeActivity;)V

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BridgeActivity;->m_weixinReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private _payViaAlipay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v3

    iget-object v3, v3, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v0, v3, Lcom/hypergryph/sdk/BridgeContext$Input;->alipayOrderInfo:Ljava/lang/String;

    .line 110
    .local v0, "alipayOrderInfo":Ljava/lang/String;
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "\u6b63\u5728\u6253\u5f00\u652f\u4ed8\u5b9d"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 112
    const-string v3, "HGSDK"

    const-string v4, "Params to alipay : %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v2, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;

    invoke-direct {v2, p0}, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;-><init>(Lcom/hypergryph/sdk/activity/BridgeActivity;)V

    .line 116
    .local v2, "handler":Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/hypergryph/sdk/activity/BridgeActivity$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/hypergryph/sdk/activity/BridgeActivity$2;-><init>(Lcom/hypergryph/sdk/activity/BridgeActivity;Ljava/lang/String;Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .local v1, "alipayThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method private _payViaWechat()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hypergryph/sdk/HGSDK;->getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v2

    iget-object v2, v2, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v2, v2, Lcom/hypergryph/sdk/BridgeContext$Input;->wechatPayReq:Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-interface {v1, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v0

    .line 132
    .local v0, "isSuc":Z
    if-nez v0, :cond_0

    .line 133
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_CREATE_ORDER_RESPONSE_ERROR:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v1

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    .line 136
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->finish()V

    .line 138
    :cond_0
    return-void
.end method

.method private _tryTriggerPay()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v0

    .line 88
    .local v0, "context":Lcom/hypergryph/sdk/BridgeContext;
    iget-boolean v1, v0, Lcom/hypergryph/sdk/BridgeContext;->isTriggeringBridge:Z

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hypergryph/sdk/BridgeContext;->isTriggeringBridge:Z

    .line 92
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    sget-object v2, Lcom/hypergryph/sdk/BridgeContext$PayType;->ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

    if-ne v1, v2, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->_payViaAlipay()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    iget-object v1, v1, Lcom/hypergryph/sdk/BridgeContext$Input;->payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

    sget-object v2, Lcom/hypergryph/sdk/BridgeContext$PayType;->WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;

    if-ne v1, v2, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->_payViaWechat()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->finish()V

    .line 65
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_STAY:I

    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_OUT:I

    invoke-virtual {p0, v0, v1}, Lcom/hypergryph/sdk/activity/BridgeActivity;->overridePendingTransition(II)V

    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInst"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "weixinFilter":Landroid/content/IntentFilter;
    const-string v1, "wei_pay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/BridgeActivity;->m_weixinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 76
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->layout:Lcom/hypergryph/sdk/utils/Res$Layout;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$Layout;->BRIDGE_LAYOUT:I

    invoke-virtual {p0, v1}, Lcom/hypergryph/sdk/activity/BridgeActivity;->setContentView(I)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BridgeActivity;->m_weixinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->onStart()V

    .line 82
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BridgeActivity;->_tryTriggerPay()V

    .line 83
    return-void
.end method
