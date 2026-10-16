.class final Lcom/onevcat/uniwebview/AndroidPlugin$4;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewPostUrl(Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$postData:[B

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$postData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v1, "UniWebView"

    const-string v2, "_UniWebViewPostUrl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$4;->val$postData:[B

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->postUrl(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
