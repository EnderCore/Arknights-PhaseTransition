.class public Lcom/onevcat/uniwebview/VideoEnabledWebView;
.super Landroid/webkit/WebView;
.source "VideoEnabledWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;
    }
.end annotation


# instance fields
.field private addedJavascriptInterface:Z

.field private videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/VideoEnabledWebView;)Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    return-object v0
.end method

.method private addJavascriptInterface()V
    .locals 2

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addedJavascriptInterface:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;-><init>(Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    const-string v1, "_VideoEnabledWebView"

    invoke-virtual {p0, v0, v1}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addedJavascriptInterface:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isVideoFullscreen()Z
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    instance-of v0, p1, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
