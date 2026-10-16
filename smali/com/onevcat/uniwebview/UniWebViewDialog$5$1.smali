.class Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog$5;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/PermissionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request from url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iget-object v1, v1, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1600(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->val$request:Landroid/webkit/PermissionRequest;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    goto :goto_0
.end method
