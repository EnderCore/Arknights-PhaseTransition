.class Lcom/hypergryph/sdk/activity/BridgeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BridgeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/BridgeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/BridgeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/BridgeActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "wei_pay_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "code":I
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->getInstance()Lcom/hypergryph/sdk/BridgeContext;

    move-result-object v0

    .line 56
    .local v0, "bridgeContext":Lcom/hypergryph/sdk/BridgeContext;
    iget-object v2, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    .line 57
    iget-object v2, v0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    iput v1, v2, Lcom/hypergryph/sdk/BridgeContext$Output;->wechatResultCode:I

    .line 58
    iget-object v2, p0, Lcom/hypergryph/sdk/activity/BridgeActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BridgeActivity;

    invoke-virtual {v2}, Lcom/hypergryph/sdk/activity/BridgeActivity;->finish()V

    .line 59
    return-void
.end method
