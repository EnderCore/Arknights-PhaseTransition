.class public Lcom/u8/sdk/HGUser;
.super Ljava/lang/Object;
.source "HGUser.java"

# interfaces
.implements Lcom/u8/sdk/IUser;


# static fields
.field private static final DEBUG_SWITCH_KEY:Ljava/lang/String; = "HG_IS_DEBUG"

.field private static final PAY_URL_KEY:Ljava/lang/String; = "HG_PAY_URL"

.field private static final WECHAT_APPID_KEY:Ljava/lang/String; = "HG_WECHAT_APPID"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v2

    .line 16
    .local v2, "params":Lcom/u8/sdk/SDKParams;
    new-instance v0, Lcom/hypergryph/sdk/HGModels$InitInput;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGModels$InitInput;-><init>()V

    .line 17
    .local v0, "input":Lcom/hypergryph/sdk/HGModels$InitInput;
    const-string v3, "HG_PAY_URL"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    .line 18
    const-string v3, "HG_IS_DEBUG"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 19
    .local v1, "isDebug":Z
    const-string v3, "HG_WECHAT_APPID"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hypergryph/sdk/HGModels$InitInput;->wechatAppId:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v0}, Lcom/hypergryph/sdk/HGSDK;->init(ZLandroid/app/Activity;Lcom/hypergryph/sdk/HGModels$InitInput;)V

    .line 21
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/HGUser$1;

    invoke-direct {v4, p0}, Lcom/u8/sdk/HGUser$1;-><init>(Lcom/u8/sdk/HGUser;)V

    invoke-virtual {v3, v4}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public getExtensionForMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "{\"gameServerUrl\":\"https://s-an-bus.hypergryph.com:18081\",\"sdkServerUrl\":\"https://s-an-bus.hypergryph.com:18081\",\"u8ServerUrl\":\"https://s-an-bus.hypergryph.com:18081/u8\",\"hotUpdateUrl\":\"https://dev-gs.mpcjnet.com:10012/assetbundle/official\",\"announceUrl\":\"https://dev-gs.mpcjnet.com:10012/announce/hgAndroid/announcement.meta.json\",\"preAnnounceUrl\":\"https://dev-gs.mpcjnet.com:10012/announce/hgAndroid/preannouncement.meta.json\",\"serviceLicenseUrl\":\"https://dev-gs.mpcjnet.com:18081/protocol/\",\"officialUrl\":\"https://dev-gs.mpcjnet.com:18081/\",\"packageDownloadUrlAndroid\":\"https://dev-gs.mpcjnet.com:10012/\",\"packageDownloadUrlIOS\":\"https://dev-gs.mpcjnet.com:10012/\"}"

    return-object v0
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "nativePlugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public queryAntiAddiction()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public queryProducts()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public realNameRegister()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public showAccountCenter()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 0
    .param p1, "userExtraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 57
    return-void
.end method

.method public switchLogin()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
