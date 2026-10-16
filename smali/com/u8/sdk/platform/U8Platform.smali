.class public Lcom/u8/sdk/platform/U8Platform;
.super Ljava/lang/Object;
.source "U8Platform.java"


# static fields
.field private static instance:Lcom/u8/sdk/platform/U8Platform;


# instance fields
.field private isSwitchAccount:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/platform/U8Platform;->isSwitchAccount:Z

    return-void
.end method

.method static synthetic access$000(Lcom/u8/sdk/platform/U8Platform;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/platform/U8Platform;->isSwitchAccount:Z

    return v0
.end method

.method static synthetic access$002(Lcom/u8/sdk/platform/U8Platform;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/u8/sdk/platform/U8Platform;->isSwitchAccount:Z

    return p1
.end method

.method public static getInstance()Lcom/u8/sdk/platform/U8Platform;
    .locals 1

    sget-object v0, Lcom/u8/sdk/platform/U8Platform;->instance:Lcom/u8/sdk/platform/U8Platform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/platform/U8Platform;

    invoke-direct {v0}, Lcom/u8/sdk/platform/U8Platform;-><init>()V

    sput-object v0, Lcom/u8/sdk/platform/U8Platform;->instance:Lcom/u8/sdk/platform/U8Platform;

    :cond_0
    sget-object v0, Lcom/u8/sdk/platform/U8Platform;->instance:Lcom/u8/sdk/platform/U8Platform;

    return-object v0
.end method


# virtual methods
.method public exitSDK(Lcom/u8/sdk/platform/U8ExitListener;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$8;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/platform/U8Platform$8;-><init>(Lcom/u8/sdk/platform/U8Platform;Lcom/u8/sdk/platform/U8ExitListener;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/u8/sdk/platform/U8InitListener;)V
    .locals 3

    if-nez p2, :cond_0

    const-string v1, "U8SDK"

    const-string v2, "U8InitListener must be not null."

    invoke-static {v1, v2}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/platform/U8Platform$1;

    invoke-direct {v2, p0, p2}, Lcom/u8/sdk/platform/U8Platform$1;-><init>(Lcom/u8/sdk/platform/U8Platform;Lcom/u8/sdk/platform/U8InitListener;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/base/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onInitResult(ILjava/lang/String;)V

    const-string v1, "U8SDK"

    const-string v2, "init failed."

    invoke-static {v1, v2, v0}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->setContext(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$2;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loginCustom(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->setContext(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$3;

    invoke-direct {v1, p0, p2}, Lcom/u8/sdk/platform/U8Platform$3;-><init>(Lcom/u8/sdk/platform/U8Platform;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$4;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$4;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/u8/sdk/PayParams;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->setContext(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$10;

    invoke-direct {v1, p0, p2}, Lcom/u8/sdk/platform/U8Platform$10;-><init>(Lcom/u8/sdk/platform/U8Platform;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryAntiAddiction()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "queryAntiAddiction"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$9;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$9;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public queryProducts(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->setContext(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$11;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$11;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAccountCenter()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$6;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$6;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$7;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/platform/U8Platform$7;-><init>(Lcom/u8/sdk/platform/U8Platform;Lcom/u8/sdk/UserExtraData;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchAccount()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/platform/U8Platform$5;

    invoke-direct {v1, p0}, Lcom/u8/sdk/platform/U8Platform$5;-><init>(Lcom/u8/sdk/platform/U8Platform;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
