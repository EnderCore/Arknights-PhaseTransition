.class public Lcom/u8/sdk/HGPay;
.super Ljava/lang/Object;
.source "HGPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .locals 6
    .param p1, "payParams"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 16
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "HGPay token"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    new-instance v0, Lcom/hypergryph/sdk/HGModels$PayInput;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGModels$PayInput;-><init>()V

    .line 20
    .local v0, "input":Lcom/hypergryph/sdk/HGModels$PayInput;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getWorldID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGModels$PayInput;->worldId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGModels$PayInput;->orderId:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/hypergryph/sdk/HGModels$PayInput;->timestamp:J

    .line 23
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGModels$PayInput;->token:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGModels$PayInput;->signKey:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/HGPay$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/HGPay$1;-><init>(Lcom/u8/sdk/HGPay;)V

    invoke-virtual {v1, v0, v2}, Lcom/hypergryph/sdk/HGSDK;->pay(Lcom/hypergryph/sdk/HGModels$PayInput;Lcom/hypergryph/sdk/HGCallbacks$Pay;)V

    .line 42
    return-void
.end method
