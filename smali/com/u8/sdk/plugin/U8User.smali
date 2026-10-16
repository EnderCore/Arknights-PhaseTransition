.class public Lcom/u8/sdk/plugin/U8User;
.super Ljava/lang/Object;
.source "U8User.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8User;


# instance fields
.field private userPlugin:Lcom/u8/sdk/IUser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8User;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8User;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8User;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8User;->instance:Lcom/u8/sdk/plugin/U8User;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->exit()V

    goto :goto_0
.end method

.method public getExtensionForMeta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->getExtensionForMeta()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/base/PluginFactory;->getInstance()Lcom/u8/sdk/base/PluginFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/base/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IUser;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/impl/SimpleDefaultUser;

    invoke-direct {v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    :cond_0
    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public login()V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "U8SDK"

    const-string v1, "u8sdk begin to call login..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->login()V

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->loginCustom(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->logout()V

    goto :goto_0
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->postGiftCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryAntiAddiction()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->queryAntiAddiction()V

    goto :goto_0
.end method

.method public queryProducts()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->queryProducts()V

    goto :goto_0
.end method

.method public showAccountCenter()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->showAccountCenter()Z

    goto :goto_0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->isUseU8Analytics()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/u8/sdk/analytics/UDAgent;->getInstance()Lcom/u8/sdk/analytics/UDAgent;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/analytics/UDAgent;->submitUserInfo(Landroid/app/Activity;Lcom/u8/sdk/UserExtraData;)V

    :cond_1
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->isSingleGame()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getDataType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Pay;->checkFailedOrders()V

    :cond_2
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IUser;->submitExtraData(Lcom/u8/sdk/UserExtraData;)V

    goto :goto_0
.end method

.method public switchLogin()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8User;->userPlugin:Lcom/u8/sdk/IUser;

    invoke-interface {v0}, Lcom/u8/sdk/IUser;->switchLogin()V

    goto :goto_0
.end method
