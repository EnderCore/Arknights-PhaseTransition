.class final Lcom/onevcat/uniwebview/AndroidPlugin$9;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewHide(Ljava/lang/String;ZIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$direction:I

.field final synthetic val$duration:F

.field final synthetic val$fade:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZIF)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$fade:Z

    iput p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$direction:I

    iput p4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$duration:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, "UniWebView"

    const-string v2, "_UniWebViewHide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$fade:Z

    iget v3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$direction:I

    iget v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$9;->val$duration:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setShow(ZZIF)V

    :cond_0
    return-void
.end method
