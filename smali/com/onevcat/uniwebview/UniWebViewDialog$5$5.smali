.class Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog$5;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v2, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$5;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iget-object v2, v2, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1702(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
