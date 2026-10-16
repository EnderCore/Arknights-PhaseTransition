.class Lcom/onevcat/uniwebview/UniWebViewDialog$3;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->setShow(ZZIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field final synthetic val$show:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$102(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->val$show:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto :goto_0
.end method
