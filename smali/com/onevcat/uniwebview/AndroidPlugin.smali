.class public Lcom/onevcat/uniwebview/AndroidPlugin;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "AndroidPlugin.java"


# static fields
.field public static final FILECHOOSER_RESULTCODE:I = 0x1258e43

.field protected static final LOG_TAG:Ljava/lang/String; = "UniWebView"

.field protected static _cameraPhotoPath:Ljava/lang/String;

.field protected static _uploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected static _uploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static _UniWebViewAddCertTrustedHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$40;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$40;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewAddJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$11;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewAddPermissionRequestTrustSite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->AddPermissionRequestTrustSite(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static _UniWebViewAddUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$25;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$25;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewAllowThirdPartyCookies(Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$41;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$41;-><init>(Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewAnimateTo(Ljava/lang/String;IIFFLjava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$33;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/AndroidPlugin$33;-><init>(Ljava/lang/String;IIFFLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewCanGoBack(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->canGoBack()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewCanGoForward(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->canGoForward()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewChangeInsets(Ljava/lang/String;IIII)V
    .locals 6

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$7;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewCleanCache(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$12;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$12;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewCleanCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$13;

    invoke-direct {v0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$13;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewDestroy(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$14;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$14;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewEvaluatingJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$10;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewGetAlpha(Ljava/lang/String;)F
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getAlpha()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewGetCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _UniWebViewGetCurrentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static _UniWebViewGetOpenLinksInExternalBrowser(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getOpenLinksInExternalBrowser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewGetUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static _UniWebViewGoBack(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$19;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$19;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewGoForward(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$20;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$20;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewHide(Ljava/lang/String;ZIF)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin$9;-><init>(Ljava/lang/String;ZIF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewInit(Ljava/lang/String;IIII)V
    .locals 6

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$2;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewLoadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$21;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewLoadWithOverviewMode(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$28;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$28;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewPostUrl(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$4;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewReload(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$5;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewRemoveUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$26;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$26;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetAllowAutoPlay(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$39;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$39;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetAlpha(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$29;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$29;-><init>(FLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetBackButtonEnable(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$22;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$22;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetBackgroundColor(Ljava/lang/String;FFFF)V
    .locals 6

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$16;-><init>(Ljava/lang/String;FFFF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetBounces(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$23;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$23;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static _UniWebViewSetHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$34;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetHorizontalScrollBarShow(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$36;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$36;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetImmersiveModeEnabled(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$30;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$30;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetOpenLinksInExternalBrowser(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$37;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$37;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetPosition(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$31;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$31;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetSize(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$32;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$32;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetSpinnerShowWhenLoading(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$17;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$17;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetSpinnerText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$18;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static _UniWebViewSetVerticalScrollBarShow(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$35;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$35;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetWebContentsDebuggingEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$38;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$38;-><init>(Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewSetZoomEnable(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$24;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$24;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewShow(Ljava/lang/String;ZIF)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin$8;-><init>(Ljava/lang/String;ZIF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewStop(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$6;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewTransparentBackground(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$15;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$15;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static _UniWebViewUseWideViewPort(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$27;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$27;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    const-string v5, ""

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v6, ""

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4

    const/4 v7, 0x0

    move-object v6, v5

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v2, v4, v7

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "="

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    aget-object v5, v3, v9

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    move-object v7, v6

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_2
.end method

.method public static getUnityActivity_()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected static runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/onevcat/uniwebview/AndroidPlugin$42;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$42;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public static setUploadMessage(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method protected ShowAllWebViewDialogs(Z)V
    .locals 6

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getShowingWebViewDialogs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    if-eqz p1, :cond_0

    const-string v3, "UniWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "goForeGround"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goForeGround()V

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    :cond_0
    const-string v3, "UniWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "goBackGround"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBackGround()V

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x1258e43

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-nez v3, :cond_1

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    if-nez v3, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    if-nez p3, :cond_5

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Landroid/net/Uri;

    aput-object v1, v2, v5

    :cond_2
    :goto_1
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    :cond_3
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    :cond_4
    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Landroid/net/Uri;

    aput-object v1, v2, v5

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->allDialogs()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->updateContentSize()V

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    sget-object v1, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/AndroidPlugin;->ShowAllWebViewDialogs(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/AndroidPlugin;->ShowAllWebViewDialogs(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/onevcat/uniwebview/AndroidPlugin$1;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$1;-><init>(Lcom/onevcat/uniwebview/AndroidPlugin;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_0
    return-void
.end method
