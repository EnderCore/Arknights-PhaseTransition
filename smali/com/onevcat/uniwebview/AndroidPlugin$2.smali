.class final Lcom/onevcat/uniwebview/AndroidPlugin$2;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewInit(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$top:I

    iput p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$left:I

    iput p4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$bottom:I

    iput p5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v2, "UniWebView"

    const-string v3, "_UniWebViewInit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;-><init>(Lcom/onevcat/uniwebview/AndroidPlugin$2;)V

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V

    iget v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$top:I

    iget v3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$left:I

    iget v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$bottom:I

    iget v5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$right:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->changeInsets(IIII)V

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/onevcat/uniwebview/UniWebViewManager;->setUniWebView(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    return-void
.end method
