.class Lcom/hypergryph/sdk/HGSDK$1;
.super Ljava/lang/Object;
.source "HGSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/HGSDK;->notifyPrePayActivityClosed()V
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
    .line 109
    iput-object p1, p0, Lcom/hypergryph/sdk/HGSDK$1;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$1;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-static {v1}, Lcom/hypergryph/sdk/HGSDK;->access$000(Lcom/hypergryph/sdk/HGSDK;)Lcom/hypergryph/sdk/HGModels$PayInput;

    move-result-object v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/hypergryph/sdk/HGError;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGError;-><init>()V

    .line 116
    .local v0, "error":Lcom/hypergryph/sdk/HGError;
    sget-object v1, Lcom/hypergryph/sdk/HGError$Type;->USER_CANCELED:Lcom/hypergryph/sdk/HGError$Type;

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->type:Lcom/hypergryph/sdk/HGError$Type;

    .line 117
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_PAY_USER_CANCELED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hypergryph/sdk/HGError;->info:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK$1;->this$0:Lcom/hypergryph/sdk/HGSDK;

    invoke-virtual {v1, v0}, Lcom/hypergryph/sdk/HGSDK;->notifyPaymentFail(Lcom/hypergryph/sdk/HGError;)V

    .line 119
    const-string v1, "HGSDK"

    const-string v2, "unexpected exit of PrePayActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
