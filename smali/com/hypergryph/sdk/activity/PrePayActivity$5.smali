.class Lcom/hypergryph/sdk/activity/PrePayActivity$5;
.super Ljava/lang/Object;
.source "PrePayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;->_notifyConfirmPayError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

.field final synthetic val$errorInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$5;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    iput-object p2, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$5;->val$errorInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$5;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-virtual {v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->finish()V

    .line 394
    new-instance v0, Lcom/hypergryph/sdk/HGError;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGError;-><init>()V

    .line 395
    .local v0, "error":Lcom/hypergryph/sdk/HGError;
    sget-object v1, Lcom/hypergryph/sdk/HGError$Type;->INTERNAL_ERROR:Lcom/hypergryph/sdk/HGError$Type;

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->type:Lcom/hypergryph/sdk/HGError$Type;

    .line 396
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$5;->val$errorInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    .line 397
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hypergryph/sdk/HGSDK;->notifyPaymentFail(Lcom/hypergryph/sdk/HGError;)V

    .line 398
    return-void
.end method
