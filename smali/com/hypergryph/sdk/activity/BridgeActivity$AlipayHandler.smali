.class Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;
.super Landroid/os/Handler;
.source "BridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/BridgeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlipayHandler"
.end annotation


# instance fields
.field private m_activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hypergryph/sdk/activity/BridgeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hypergryph/sdk/activity/BridgeActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/hypergryph/sdk/activity/BridgeActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;->m_activity:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    new-instance v1, Lcom/hypergryph/sdk/alipay/AliPayResult;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/hypergryph/sdk/alipay/AliPayResult;-><init>(Ljava/util/Map;)V

    .line 41
    .local v1, "result":Lcom/hypergryph/sdk/alipay/AliPayResult;
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v0

    .line 42
    .local v0, "context":Lcom/hypergryph/sdk/BridgeContext;
    iget-object v2, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    .line 43
    iget-object v2, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    iput-object v1, v2, Lcom/hypergryph/sdk/BridgeContext$Output;->alipayResult:Lcom/hypergryph/sdk/alipay/AliPayResult;

    .line 44
    iget-object v2, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hypergryph/sdk/activity/BridgeActivity;

    invoke-virtual {v2}, Lcom/hypergryph/sdk/activity/BridgeActivity;->finish()V

    .line 47
    :cond_0
    return-void
.end method
