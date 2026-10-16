.class public Lcom/hypergryph/sdk/weixin/BaseWXActivity;
.super Lcom/hypergryph/sdk/activity/BaseActivity;
.source "BaseWXActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field public static final WEI_PAY_RESULT_ACTION:Ljava/lang/String; = "wei_pay"

.field public static final WEI_PAY_RESULT_CANCEL:I = -0x2

.field public static final WEI_PAY_RESULT_CODE_KEY:Ljava/lang/String; = "wei_pay_result"

.field public static final WEI_PAY_RESULT_FAILED:I = -0x1

.field public static final WEI_PAY_RESULT_SUCCESS:I = 0x0

.field public static final WEI_PAY_RESULT_UNKNOWN_ERROR:I = -0x3


# instance fields
.field private m_resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;-><init>()V

    .line 29
    const/4 v0, -0x3

    iput v0, p0, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->m_resultCode:I

    return-void
.end method

.method private _NotifyPayResult()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "localIntent":Landroid/content/Intent;
    const-string v2, "wei_pay_result"

    iget v3, p0, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->m_resultCode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v2, "wei_pay"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInst"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 35
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->setIntent(Landroid/content/Intent;)V

    .line 41
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hypergryph/sdk/HGSDK;->getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    move-result v0

    .line 42
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 44
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_SDK_ERROR:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-virtual {p0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->finish()V

    .line 47
    :cond_0
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "paramBaseReq"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 50
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "paramBaseResp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    .line 54
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput v0, p0, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->m_resultCode:I

    .line 55
    const-string v0, "BaseWXActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response code from weixin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->m_resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->_NotifyPayResult()V

    .line 57
    invoke-virtual {p0}, Lcom/hypergryph/sdk/weixin/BaseWXActivity;->finish()V

    .line 58
    return-void
.end method
