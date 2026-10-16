.class Lcom/onevcat/uniwebview/UniWebViewDialog$4;
.super Landroid/webkit/WebViewClient;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    const-string v1, "Loading process is cancelled."

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1102(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1202(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1400(Lcom/onevcat/uniwebview/UniWebViewDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1102(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1202(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v6, v9}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v6, v9}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v6, "UniWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received an ssl error from url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Trying to recover for host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v6}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1500(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v6, v9}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$4;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-interface {v0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
