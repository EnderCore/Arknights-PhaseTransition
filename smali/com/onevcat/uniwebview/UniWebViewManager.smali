.class public Lcom/onevcat/uniwebview/UniWebViewManager;
.super Ljava/lang/Object;
.source "UniWebViewManager.java"


# static fields
.field private static _instance:Lcom/onevcat/uniwebview/UniWebViewManager;


# instance fields
.field private _showingWebViewDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation
.end field

.field private _webViewDialogDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->_instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_showingWebViewDialogs:Ljava/util/ArrayList;

    return-void
.end method

.method public static Instance()Lcom/onevcat/uniwebview/UniWebViewManager;
    .locals 1

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->_instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewManager;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewManager;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->_instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewManager;->_instance:Lcom/onevcat/uniwebview/UniWebViewManager;

    return-object v0
.end method


# virtual methods
.method public addShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_showingWebViewDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_showingWebViewDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public allDialogs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getShowingWebViewDialogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/onevcat/uniwebview/UniWebViewDialog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_showingWebViewDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShowingWebViewDialog(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_showingWebViewDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUniWebView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setUniWebView(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewManager;->_webViewDialogDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
