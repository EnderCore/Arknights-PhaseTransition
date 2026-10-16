.class public Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;
.super Ljava/lang/Object;
.source "VideoEnabledWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/VideoEnabledWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/VideoEnabledWebView;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/VideoEnabledWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/onevcat/uniwebview/VideoEnabledWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyVideoEnd()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "___"

    const-string v1, "GOT IT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface$1;-><init>(Lcom/onevcat/uniwebview/VideoEnabledWebView$JavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
