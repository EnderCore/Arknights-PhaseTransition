.class Lcom/u8/sdk/HGPay$1;
.super Lcom/hypergryph/sdk/HGCallbacks$Pay;
.source "HGPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/HGPay;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/HGPay;


# direct methods
.method constructor <init>(Lcom/u8/sdk/HGPay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/u8/sdk/HGPay;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/u8/sdk/HGPay$1;->this$0:Lcom/u8/sdk/HGPay;

    invoke-direct {p0}, Lcom/hypergryph/sdk/HGCallbacks$Pay;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/hypergryph/sdk/HGError;)V
    .locals 3
    .param p1, "error"    # Lcom/hypergryph/sdk/HGError;

    .prologue
    .line 36
    iget-object v0, p1, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    :cond_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public onSucceed(Lcom/hypergryph/sdk/HGModels$PayResult;)V
    .locals 4
    .param p1, "payResult"    # Lcom/hypergryph/sdk/HGModels$PayResult;

    .prologue
    .line 28
    new-instance v0, Lcom/u8/sdk/U8PayResult;

    invoke-direct {v0}, Lcom/u8/sdk/U8PayResult;-><init>()V

    .line 29
    .local v0, "result":Lcom/u8/sdk/U8PayResult;
    iget-boolean v1, p1, Lcom/hypergryph/sdk/HGModels$PayResult;->isConfirmed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/u8/sdk/U8PayResult;->status:I

    .line 30
    iget-object v1, p1, Lcom/hypergryph/sdk/HGModels$PayResult;->outTradeNo:Ljava/lang/String;

    iput-object v1, v0, Lcom/u8/sdk/U8PayResult;->outTradeNo:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/u8/sdk/U8PayResult;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 32
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
