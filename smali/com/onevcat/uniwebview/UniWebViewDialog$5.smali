.class Lcom/onevcat/uniwebview/UniWebViewDialog$5;
.super Lcom/onevcat/uniwebview/UniWebChromeClient;
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
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/onevcat/uniwebview/UniWebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6

    const/16 v5, 0x8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;

    invoke-direct {v4, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/JsResult;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1702(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewDialog$5$4;

    invoke-direct {v4, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$4;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/JsResult;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewDialog$5$3;

    invoke-direct {v4, p0, p4}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/JsResult;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1702(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040013

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;

    invoke-direct {v3, p0, v1, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040009

    new-instance v3, Lcom/onevcat/uniwebview/UniWebViewDialog$5$6;

    invoke-direct {v3, p0, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$6;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1702(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const/4 v2, 0x1

    return v2
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2

    const-string v0, "UniWebView"

    const-string v1, "onPermissionRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;

    invoke-direct {v1, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$5$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/PermissionRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
