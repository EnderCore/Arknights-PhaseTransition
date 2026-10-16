.class Lcom/hypergryph/sdk/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/BaseActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    iput-object p2, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-static {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$300(Lcom/hypergryph/sdk/activity/BaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-static {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$300(Lcom/hypergryph/sdk/activity/BaseActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 275
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$302(Lcom/hypergryph/sdk/activity/BaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 276
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 280
    :cond_0
    return-void
.end method
