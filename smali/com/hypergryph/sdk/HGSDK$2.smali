.class Lcom/hypergryph/sdk/HGSDK$2;
.super Ljava/lang/Object;
.source "HGSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/HGSDK;->_goToPrePay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/HGSDK;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/HGSDK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/HGSDK;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->initIfNot(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 227
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$2;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v2, v2, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_IN:I

    sget-object v3, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    iget v3, v3, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_STAY:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v1, "HGSDK"

    const-string v2, "no context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
