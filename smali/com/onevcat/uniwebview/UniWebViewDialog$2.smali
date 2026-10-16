.class Lcom/onevcat/uniwebview/UniWebViewDialog$2;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$finalUiOptions:I


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->val$decorView:Landroid/view/View;

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->val$finalUiOptions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->val$decorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->val$decorView:Landroid/view/View;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$2;->val$finalUiOptions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
