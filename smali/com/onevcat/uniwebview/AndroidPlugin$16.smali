.class final Lcom/onevcat/uniwebview/AndroidPlugin$16;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewSetBackgroundColor(Ljava/lang/String;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:F

.field final synthetic val$b:F

.field final synthetic val$g:F

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$r:F


# direct methods
.method constructor <init>(Ljava/lang/String;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$name:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$r:F

    iput p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$g:F

    iput p4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$b:F

    iput p5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, "UniWebView"

    const-string v2, "_UniWebViewSetBackgroundColor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$r:F

    iget v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$g:F

    iget v3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$b:F

    iget v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$16;->val$a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setBackgroundColor(FFFF)V

    :cond_0
    return-void
.end method
