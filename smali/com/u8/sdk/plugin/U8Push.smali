.class public Lcom/u8/sdk/plugin/U8Push;
.super Ljava/lang/Object;
.source "U8Push.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8Push;


# instance fields
.field private pushPlugin:Lcom/u8/sdk/IPush;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8Push;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8Push;->instance:Lcom/u8/sdk/plugin/U8Push;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8Push;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8Push;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8Push;->instance:Lcom/u8/sdk/plugin/U8Push;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8Push;->instance:Lcom/u8/sdk/plugin/U8Push;

    return-object v0
.end method

.method private isPluginInited()Z
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    if-nez v0, :cond_0

    const-string v0, "U8SDK"

    const-string v1, "The push plugin is not inited or inited failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->addAlias(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs addTags([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->addTags([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/base/PluginFactory;->getInstance()Lcom/u8/sdk/base/PluginFactory;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/u8/sdk/base/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IPush;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAlias(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->removeAlias(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs removeTags([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->removeTags([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public scheduleNotification(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IPush;->scheduleNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPush()V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0}, Lcom/u8/sdk/IPush;->startPush()V

    :cond_0
    return-void
.end method

.method public stopPush()V
    .locals 1

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Push;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Push;->pushPlugin:Lcom/u8/sdk/IPush;

    invoke-interface {v0}, Lcom/u8/sdk/IPush;->stopPush()V

    :cond_0
    return-void
.end method
