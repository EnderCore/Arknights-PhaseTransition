.class Lcom/onevcat/uniwebview/AndroidPlugin$2$1;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/AndroidPlugin$2;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "AnimationFinished"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v1, v1, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeUniWebView(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V
    .locals 3

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewKeyDown"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogShouldCloseByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3

    const-string v0, "UniWebView"

    const-string v1, "dialog should be closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "WebViewDone"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "HideTransitionFinished"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "EvalJavaScriptFinished"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadBegin"

    invoke-static {v0, v1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lcom/onevcat/uniwebview/UniWebViewDialog;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page load error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "LoadComplete"

    invoke-static {v0, v1, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v0, v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v1, "ShowTransitionFinished"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x0

    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "sms:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "UniWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v6, p1, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/onevcat/uniwebview/AndroidPlugin$2$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin$2;

    iget-object v6, v6, Lcom/onevcat/uniwebview/AndroidPlugin$2;->val$name:Ljava/lang/String;

    const-string v7, "ReceivedMessage"

    invoke-static {v6, v7, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    if-nez v6, :cond_8

    :cond_7
    const-string v6, "UniWebView"

    const-string v7, "dialog null!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getOpenLinksInExternalBrowser()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    goto/16 :goto_0
.end method
