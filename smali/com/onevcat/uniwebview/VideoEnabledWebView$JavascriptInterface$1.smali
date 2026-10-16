.class Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;
.super Ljava/lang/Object;
.source "VideoEnabledWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;->notifyVideoEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-static {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->access$000(Lcom/onevcat/uniwebview/VideoEnabledWebView;)Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-static {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->access$000(Lcom/onevcat/uniwebview/VideoEnabledWebView;)Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method
