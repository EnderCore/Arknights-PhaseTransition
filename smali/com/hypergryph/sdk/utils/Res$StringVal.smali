.class public Lcom/hypergryph/sdk/utils/Res$StringVal;
.super Ljava/lang/Object;
.source "Res.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/utils/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringVal"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "string"


# instance fields
.field public HG_ALIPAY_INTERNAL_ERROR:I

.field public HG_ALIPAY_PAY_CREATE_ORDER_RESPONSE_ERROR:I

.field public HG_CONFIRM_PAY_ERROR:I

.field public HG_CONFIRM_PAY_FAILED:I

.field public HG_CONFIRM_PAY_TIMEOUT:I

.field public HG_CREATE_ORDER_SERVICE_ERROR:I

.field public HG_DIALOG_OK:I

.field public HG_NETWORK_ERROR:I

.field public HG_NETWORK_TIMEOUT:I

.field public HG_PAY_USER_CANCELED:I

.field public HG_WECHAT_NOT_INSTALLED:I

.field public HG_WECHAT_NOT_SUPPORTED:I

.field public HG_WECHAT_PAY_CREATE_ORDER_RESPONSE_ERROR:I

.field public HG_WECHAT_PAY_FAILED_WITH_ERROR:I

.field public HG_WECHAT_PAY_SDK_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_pay_user_canceled"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_PAY_USER_CANCELED:I

    .line 53
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_network_timeout"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_TIMEOUT:I

    .line 54
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_network_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_ERROR:I

    .line 55
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_wechat_not_installed"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_NOT_INSTALLED:I

    .line 56
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_wechat_not_supported"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_NOT_SUPPORTED:I

    .line 57
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_wechat_pay_failed_with_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_FAILED_WITH_ERROR:I

    .line 58
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_wechat_pay_create_order_response_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_CREATE_ORDER_RESPONSE_ERROR:I

    .line 59
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_alipay_pay_create_order_response_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_ALIPAY_PAY_CREATE_ORDER_RESPONSE_ERROR:I

    .line 60
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_wechat_pay_sdk_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_WECHAT_PAY_SDK_ERROR:I

    .line 61
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_confirm_pay_timeout"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_TIMEOUT:I

    .line 62
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_confirm_pay_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_ERROR:I

    .line 63
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_confirm_pay_failed"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_FAILED:I

    .line 64
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_dialog_ok"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_DIALOG_OK:I

    .line 65
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_alipay_internal_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_ALIPAY_INTERNAL_ERROR:I

    .line 66
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_create_order_service_error"

    const-string v2, "string"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CREATE_ORDER_SERVICE_ERROR:I

    return-void
.end method
