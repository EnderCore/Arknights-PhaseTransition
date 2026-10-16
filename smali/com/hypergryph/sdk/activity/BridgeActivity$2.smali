.class Lcom/hypergryph/sdk/activity/BridgeActivity$2;
.super Ljava/lang/Object;
.source "BridgeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/BridgeActivity;->_payViaAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;

.field final synthetic val$alipayOrderInfo:Ljava/lang/String;

.field final synthetic val$handler:Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/BridgeActivity;Ljava/lang/String;Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/BridgeActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;

    iput-object p2, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->val$alipayOrderInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->val$handler:Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 119
    new-instance v2, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;

    invoke-direct {v2, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 120
    .local v2, "task":Lcom/alipay/sdk/app/PayTask;
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->val$alipayOrderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 121
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 123
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$2;->val$handler:Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;

    invoke-virtual {v3, v0}, Lcom/hypergryph/sdk/activity/BridgeActivity$AlipayHandler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method
