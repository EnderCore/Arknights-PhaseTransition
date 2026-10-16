.class public Lcom/u8/sdk/plugin/U8Share;
.super Ljava/lang/Object;
.source "U8Share.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8Share;


# instance fields
.field private sharePlugin:Lcom/u8/sdk/IShare;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8Share;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8Share;->instance:Lcom/u8/sdk/plugin/U8Share;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8Share;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8Share;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8Share;->instance:Lcom/u8/sdk/plugin/U8Share;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8Share;->instance:Lcom/u8/sdk/plugin/U8Share;

    return-object v0
.end method

.method private isPluginInited()Z
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Share;->sharePlugin:Lcom/u8/sdk/IShare;

    if-nez v0, :cond_0

    const-string v0, "U8SDK"

    const-string v1, "The share plugin is not inited or inited failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/base/PluginFactory;->getInstance()Lcom/u8/sdk/base/PluginFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/u8/sdk/base/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IShare;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Share;->sharePlugin:Lcom/u8/sdk/IShare;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Share;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Share;->sharePlugin:Lcom/u8/sdk/IShare;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IShare;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public share(Lcom/u8/sdk/ShareParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Share;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Share;->sharePlugin:Lcom/u8/sdk/IShare;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IShare;->share(Lcom/u8/sdk/ShareParams;)V

    :cond_0
    return-void
.end method
