.class public Lcom/onevcat/uniwebview/UniWebViewDialog;
.super Landroid/app/Dialog;
.source "UniWebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_EDGE_BOTTOM:I = 0x3

.field public static final ANIMATION_EDGE_LEFT:I = 0x2

.field public static final ANIMATION_EDGE_NONE:I = 0x0

.field public static final ANIMATION_EDGE_RIGHT:I = 0x4

.field public static final ANIMATION_EDGE_TOP:I = 0x1


# instance fields
.field private _alertDialog:Landroid/app/AlertDialog;

.field private _animating:Z

.field private _backButtonEnable:Z

.field private _backgroundColor:I

.field private _bottom:I

.field private _canGoBack:Z

.field private _canGoForward:Z

.field private _content:Landroid/widget/FrameLayout;

.field private _currentLoadingNoError:Z

.field private _currentUrl:Ljava/lang/String;

.field private _currentUserAgent:Ljava/lang/String;

.field private _immersiveMode:Z

.field private _isLoading:Z

.field private _left:I

.field private _listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

.field private _loadingInterrupted:Z

.field private _manualHide:Z

.field private _openLinksInExternalBrowser:Z

.field private _right:I

.field private _showSpinnerWhenLoading:Z

.field private _spinner:Landroid/app/ProgressDialog;

.field private _spinnerText:Ljava/lang/String;

.field private _top:I

.field private _uniWebView:Lcom/onevcat/uniwebview/UniWebView;

.field private _userStopped:Z

.field private activity:Landroid/app/Activity;

.field private alpha:F

.field private certTrustedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public schemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trustSites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v6, 0x10

    const/16 v5, 0x400

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const v1, 0x103006c

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    const-string v1, "Loading..."

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentLoadingNoError:Z

    iput-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_userStopped:Z

    iput v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    iput-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    iput-boolean v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    const-string v2, "uniwebview"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->certTrustedHosts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createContent()V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createWebView()V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->createSpinner()V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "UniWebView"

    const-string v2, "Create a new UniWebView Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewDialog$1;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebView;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/onevcat/uniwebview/UniWebViewDialog;)I
    .locals 1

    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    return v0
.end method

.method static synthetic access$1500(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->certTrustedHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/onevcat/uniwebview/UniWebViewDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentLoadingNoError:Z

    return v0
.end method

.method static synthetic access$302(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentLoadingNoError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_userStopped:Z

    return v0
.end method

.method static synthetic access$402(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_userStopped:Z

    return p1
.end method

.method static synthetic access$502(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoBack:Z

    return p1
.end method

.method static synthetic access$602(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoForward:Z

    return p1
.end method

.method static synthetic access$700(Lcom/onevcat/uniwebview/UniWebViewDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    return v0
.end method

.method static synthetic access$800(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    return-void
.end method

.method static synthetic access$902(Lcom/onevcat/uniwebview/UniWebViewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    return p1
.end method

.method private createContent()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private createSpinner()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createWebView()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, -0x1

    new-instance v1, Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v6, Lcom/onevcat/uniwebview/UniWebViewDialog$4;

    invoke-direct {v6, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$4;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v6}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewDialog$5;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v0}, Lcom/onevcat/uniwebview/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewDialog$6;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$6;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v7}, Lcom/onevcat/uniwebview/UniWebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v2, "android"

    invoke-virtual {v1, p0, v2}, Lcom/onevcat/uniwebview/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setBounces(Z)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSpinner()V
    .locals 3

    const/16 v2, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public AddPermissionRequestTrustSite(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->trustSites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public HideSystemUI()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v6, 0x13

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v4, :cond_1

    const/16 v2, 0xf06

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_2

    iget-boolean v4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v4, :cond_2

    const/16 v3, 0x1706

    :goto_1
    move v1, v3

    new-instance v4, Lcom/onevcat/uniwebview/UniWebViewDialog$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$2;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_1
.end method

.method public addCertTrustedHose(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->certTrustedHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addJs(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "UniWebView"

    const-string v2, "Trying to add a null js. Abort."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "javascript:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addUrlScheme(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public animateTo(IIFFLjava/lang/String;)V
    .locals 9

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    mul-float v5, p3, v8

    float-to-int v2, v5

    mul-float v5, p4, v8

    float-to-int v1, v5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-direct {v0, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/onevcat/uniwebview/UniWebViewDialog$7;

    invoke-direct {v5, p0, p5}, Lcom/onevcat/uniwebview/UniWebViewDialog$7;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    add-int v6, v2, v1

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoBack:Z

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_canGoForward:Z

    return v0
.end method

.method public changeInsets(IIII)V
    .locals 0

    iput p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_bottom:I

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_right:I

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->updateContentSize()V

    return-void
.end method

.method public cleanCache()V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->clearCache(Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->removeShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->dismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogKeyDown(Lcom/onevcat/uniwebview/UniWebViewDialog;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method displaySize()Landroid/graphics/Point;
    .locals 5

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    if-eqz v3, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    return-object v1

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    return v0
.end method

.method public getOpenLinksInExternalBrowser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_openLinksInExternalBrowser:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_currentUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWebView()Lcom/onevcat/uniwebview/UniWebView;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBackGround()V
    .locals 2

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->hide()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->onPause()V

    :cond_2
    return-void
.end method

.method public goForeGround()V
    .locals 2

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->reload()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_loadingInterrupted:Z

    :cond_0
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->show()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->onResume()V

    :cond_2
    return-void
.end method

.method public goForward()Z
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goForward()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UniWebView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadJS(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v2, "UniWebView"

    const-string v3, "Trying to eval a null js. Abort."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "javascript:android.onData(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadWithOverviewMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public onData(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "UniWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a call back from js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onJavaScriptFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBack()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogShouldCloseByBackButton(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    invoke-interface {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onDialogClose(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->reload()V

    return-void
.end method

.method public removeUrlScheme(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 4

    iput p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1, v0}, Lcom/onevcat/uniwebview/UniWebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->alpha:F

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setBackButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backButtonEnable:Z

    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, p1, v6

    float-to-int v4, v5

    mul-float v5, p2, v6

    float-to-int v3, v5

    mul-float v5, p3, v6

    float-to-int v1, v5

    mul-float v5, p4, v6

    float-to-int v0, v5

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    invoke-virtual {v5, v6}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    return-void
.end method

.method public setBounces(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "UniWebView"

    const-string v1, "WebView over scroll effect supports after API 9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public setHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHorizontalScrollBarShow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public setImmersiveModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_immersiveMode:Z

    return-void
.end method

.method public setOpenLinksInExternalBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_openLinksInExternalBrowser:Z

    return-void
.end method

.method public setPosition(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setShow(ZZIF)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    if-eqz v13, :cond_0

    const-string v13, "UniWebView"

    const-string v14, "Trying to animate but another transition animation is not finished yet. Ignore this one."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showDialog()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_isLoading:Z

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->showSpinner()V

    :cond_1
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewManager;->addShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    :goto_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_11

    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_animating:Z

    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float v13, v13, p4

    float-to-int v3, v13

    if-eqz p2, :cond_3

    if-eqz p1, :cond_6

    const/4 v9, 0x0

    :goto_2
    if-eqz p1, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v9, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v8

    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    const/4 v11, 0x0

    iget v13, v8, Landroid/graphics/Point;->y:I

    neg-int v12, v13

    :goto_4
    if-eqz p3, :cond_4

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_d

    int-to-float v13, v11

    move/from16 v16, v13

    :goto_5
    if-eqz p1, :cond_e

    const/4 v13, 0x0

    move v15, v13

    :goto_6
    if-eqz p1, :cond_f

    int-to-float v13, v12

    move v14, v13

    :goto_7
    if-eqz p1, :cond_10

    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v16

    invoke-direct {v2, v0, v15, v14, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v7, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    invoke-virtual {v10, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/onevcat/uniwebview/UniWebViewDialog$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v10, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/view/View;Z)V

    int-to-long v14, v3

    invoke-virtual {v5, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    sget-object v13, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v13}, Lcom/onevcat/uniwebview/UniWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->hide()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_manualHide:Z

    goto/16 :goto_1

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_9

    iget v13, v8, Landroid/graphics/Point;->x:I

    neg-int v11, v13

    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_a

    const/4 v11, 0x0

    iget v12, v8, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_a
    const/4 v13, 0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_b

    iget v11, v8, Landroid/graphics/Point;->x:I

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_b
    if-nez p3, :cond_c

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_c
    const-string v13, "UniWebView"

    const-string v14, "Unknown direction. You should send 0~5"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/4 v13, 0x0

    move/from16 v16, v13

    goto/16 :goto_5

    :cond_e
    int-to-float v13, v11

    move v15, v13

    goto/16 :goto_6

    :cond_f
    const/4 v13, 0x0

    move v14, v13

    goto/16 :goto_7

    :cond_10
    int-to-float v13, v12

    goto/16 :goto_8

    :cond_11
    if-eqz p1, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onShowTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_content:Landroid/widget/FrameLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_listener:Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onHideTransitionFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;)V

    goto/16 :goto_0
.end method

.method public setSize(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The width or height of size is less than 0. Webview will not show. Please check your setting. Input width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", input height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public setSpinnerShowWhenLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_showSpinnerWhenLoading:Z

    return-void
.end method

.method public setSpinnerText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_spinnerText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTransparent(Z)V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x0

    const-string v0, "UniWebView"

    const-string v1, "SetTransparentBackground is already deprecated and there is no guarantee it will work in later versions. You should use SetBackgroundColor instead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewBackgroundColor(I)V

    return-void

    :cond_0
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_backgroundColor:I

    goto :goto_0
.end method

.method public setVerticalScrollBarShow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_userStopped:Z

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->stopLoading()V

    return-void
.end method

.method public updateContentSize()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->displaySize()Landroid/graphics/Point;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_right:I

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_bottom:I

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v5, "UniWebView"

    const-string v6, "The inset is lager then screen size. Webview will not show. Please check your insets setting."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4, v3, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v5, 0x33

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_left:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_top:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public useWideViewPort(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog;->_uniWebView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method
