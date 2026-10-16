.class public Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "VideoEnabledWebChromeClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;
    }
.end annotation


# instance fields
.field private activityNonVideoView:Landroid/view/View;

.field private activityVideoView:Landroid/view/ViewGroup;

.field private isVideoFullscreen:Z

.field private loadingView:Landroid/view/View;

.field private toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private videoViewContainer:Landroid/widget/FrameLayout;

.field private webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object p4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isVideoFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onHideCustomView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iput-boolean v2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    iput-object v3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v0, v2}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-boolean v8, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    iput-object v1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    instance-of v4, v0, Landroid/widget/VideoView;

    if-eqz v4, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v4, v8}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v0, Landroid/view/SurfaceView;

    if-eqz v4, :cond_0

    const-string v2, "javascript:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "var _ytrp_html5_video_last;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "var _ytrp_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "if (_ytrp_html5_video != undefined && _ytrp_html5_video != _ytrp_html5_video_last) {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_ytrp_html5_video_last = _ytrp_html5_video;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "function _ytrp_html5_video_ended() {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_VideoEnabledWebView.notifyVideoEnd();"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_ytrp_html5_video.addEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->webView:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-virtual {v4, v2}, Lcom/onevcat/uniwebview/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setOnToggledFullscreen(Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    return-void
.end method
