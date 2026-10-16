.class Lcom/hypergryph/sdk/activity/PrePayActivity$1;
.super Ljava/lang/Object;
.source "PrePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/PrePayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$1;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 75
    .local v0, "id":I
    invoke-static {}, Lcom/hypergryph/sdk/utils/FastActionDetector;->isFastAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_ALIPAY:I

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$1;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$000(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_WECHAT:I

    if-ne v0, v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$1;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$100(Lcom/hypergryph/sdk/activity/PrePayActivity;)V

    goto :goto_0

    .line 82
    :cond_3
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_PAYMENT_CANCEL:I

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$1;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-virtual {v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->onBackPressed()V

    goto :goto_0
.end method
