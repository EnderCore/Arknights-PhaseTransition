.class public Lcom/hypergryph/sdk/HGSDK;
.super Ljava/lang/Object;
.source "HGSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/HGSDK$State;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/hypergryph/sdk/HGSDK;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

.field private m_isDebug:Z

.field private m_isInited:Z

.field private m_iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private m_mainHandler:Landroid/os/Handler;

.field private m_orderId:Ljava/lang/String;

.field private m_payCallback:Lcom/hypergryph/sdk/HGCallbacks$Pay;

.field private m_payInput:Lcom/hypergryph/sdk/HGModels$PayInput;

.field private m_signKey:Ljava/lang/String;

.field private m_state:Lcom/hypergryph/sdk/HGSDK$State;

.field private m_wechatAppId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_isInited:Z

    .line 40
    new-instance v0, Lcom/hypergryph/sdk/HGModels$InitInput;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGModels$InitInput;-><init>()V

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    .line 41
    sget-object v0, Lcom/hypergryph/sdk/HGSDK$State;->IDLE:Lcom/hypergryph/sdk/HGSDK$State;

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_state:Lcom/hypergryph/sdk/HGSDK$State;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_payCallback:Lcom/hypergryph/sdk/HGCallbacks$Pay;

    .line 34
    return-void
.end method

.method private _ClearPayCache()Lcom/hypergryph/sdk/HGCallbacks$Pay;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    sget-object v1, Lcom/hypergryph/sdk/HGSDK$State;->IDLE:Lcom/hypergryph/sdk/HGSDK$State;

    iput-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_state:Lcom/hypergryph/sdk/HGSDK$State;

    .line 237
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_payCallback:Lcom/hypergryph/sdk/HGCallbacks$Pay;

    .line 238
    .local v0, "temp":Lcom/hypergryph/sdk/HGCallbacks$Pay;
    iput-object v2, p0, Lcom/hypergryph/sdk/HGSDK;->m_orderId:Ljava/lang/String;

    .line 239
    iput-object v2, p0, Lcom/hypergryph/sdk/HGSDK;->m_payCallback:Lcom/hypergryph/sdk/HGCallbacks$Pay;

    .line 240
    iput-object v2, p0, Lcom/hypergryph/sdk/HGSDK;->m_payInput:Lcom/hypergryph/sdk/HGModels$PayInput;

    .line 241
    invoke-static {}, Lcom/hypergryph/sdk/BridgeContext;->Reset()V

    .line 242
    return-object v0
.end method

.method private _goToPrePay()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hypergryph/sdk/HGSDK$2;

    invoke-direct {v1, p0}, Lcom/hypergryph/sdk/HGSDK$2;-><init>(Lcom/hypergryph/sdk/HGSDK;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/hypergryph/sdk/HGSDK;)Lcom/hypergryph/sdk/HGModels$PayInput;
    .locals 1
    .param p0, "x0"    # Lcom/hypergryph/sdk/HGSDK;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_payInput:Lcom/hypergryph/sdk/HGModels$PayInput;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hypergryph/sdk/HGSDK;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/hypergryph/sdk/HGSDK;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_context:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lcom/hypergryph/sdk/HGSDK;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/hypergryph/sdk/HGSDK;->s_instance:Lcom/hypergryph/sdk/HGSDK;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/hypergryph/sdk/HGSDK;

    invoke-direct {v0}, Lcom/hypergryph/sdk/HGSDK;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/HGSDK;->s_instance:Lcom/hypergryph/sdk/HGSDK;

    .line 30
    :cond_0
    sget-object v0, Lcom/hypergryph/sdk/HGSDK;->s_instance:Lcom/hypergryph/sdk/HGSDK;

    return-object v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "0.1.0"

    return-object v0
.end method


# virtual methods
.method public confirmAlipayUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, ""

    .line 211
    :goto_0
    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const-string v0, "%s%s"

    .line 211
    .local v0, "template":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v3, v3, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pay/confirmOrderAlipay"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 209
    .end local v0    # "template":Ljava/lang/String;
    :cond_1
    const-string v0, "%s/%s"

    .restart local v0    # "template":Ljava/lang/String;
    goto :goto_1
.end method

.method public confirmWechatUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, ""

    .line 198
    :goto_0
    return-object v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const-string v0, "%s%s"

    .line 198
    .local v0, "template":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v3, v3, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pay/confirmOrderWechat"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 196
    .end local v0    # "template":Ljava/lang/String;
    :cond_1
    const-string v0, "%s/%s"

    .restart local v0    # "template":Ljava/lang/String;
    goto :goto_1
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_context:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_signKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getWXAPI()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/hypergryph/sdk/HGSDK;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_wechatAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 183
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_wechatAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_iwxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public init(ZLandroid/app/Activity;Lcom/hypergryph/sdk/HGModels$InitInput;)V
    .locals 2
    .param p1, "isDebug"    # Z
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "input"    # Lcom/hypergryph/sdk/HGModels$InitInput;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    const-string v0, "HGSDK"

    const-string v1, "Init context shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-object p3, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    .line 64
    iput-boolean p1, p0, Lcom/hypergryph/sdk/HGSDK;->m_isDebug:Z

    .line 65
    iput-object p2, p0, Lcom/hypergryph/sdk/HGSDK;->m_context:Landroid/app/Activity;

    .line 66
    iget-object v0, p3, Lcom/hypergryph/sdk/HGModels$InitInput;->wechatAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_wechatAppId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_mainHandler:Landroid/os/Handler;

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_isInited:Z

    goto :goto_0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_isDebug:Z

    return v0
.end method

.method public notifyPaymentFail(Lcom/hypergryph/sdk/HGError;)V
    .locals 3
    .param p1, "error"    # Lcom/hypergryph/sdk/HGError;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/hypergryph/sdk/HGSDK;->_ClearPayCache()Lcom/hypergryph/sdk/HGCallbacks$Pay;

    move-result-object v0

    .line 93
    .local v0, "callback":Lcom/hypergryph/sdk/HGCallbacks$Pay;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/hypergryph/sdk/HGCallbacks$Pay;->onFail(Lcom/hypergryph/sdk/HGError;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v1, "HGSDK"

    const-string v2, "no callback available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyPaymentSucceed(Z)V
    .locals 4
    .param p1, "isConfirmed"    # Z

    .prologue
    .line 126
    new-instance v1, Lcom/hypergryph/sdk/HGModels$PayResult;

    invoke-direct {v1}, Lcom/hypergryph/sdk/HGModels$PayResult;-><init>()V

    .line 127
    .local v1, "result":Lcom/hypergryph/sdk/HGModels$PayResult;
    invoke-virtual {p0}, Lcom/hypergryph/sdk/HGSDK;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hypergryph/sdk/HGModels$PayResult;->outTradeNo:Ljava/lang/String;

    .line 128
    iput-boolean p1, v1, Lcom/hypergryph/sdk/HGModels$PayResult;->isConfirmed:Z

    .line 130
    invoke-direct {p0}, Lcom/hypergryph/sdk/HGSDK;->_ClearPayCache()Lcom/hypergryph/sdk/HGCallbacks$Pay;

    move-result-object v0

    .line 131
    .local v0, "callback":Lcom/hypergryph/sdk/HGCallbacks$Pay;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Lcom/hypergryph/sdk/HGCallbacks$Pay;->onSucceed(Lcom/hypergryph/sdk/HGModels$PayResult;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v2, "HGSDK"

    const-string v3, "no callback available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyPrePayActivityClosed()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hypergryph/sdk/HGSDK$1;

    invoke-direct {v1, p0}, Lcom/hypergryph/sdk/HGSDK$1;-><init>(Lcom/hypergryph/sdk/HGSDK;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pay(Lcom/hypergryph/sdk/HGModels$PayInput;Lcom/hypergryph/sdk/HGCallbacks$Pay;)V
    .locals 2
    .param p1, "input"    # Lcom/hypergryph/sdk/HGModels$PayInput;
    .param p2, "payCallback"    # Lcom/hypergryph/sdk/HGCallbacks$Pay;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_isInited:Z

    if-nez v0, :cond_0

    .line 75
    const-string v0, "HGSDK"

    const-string v1, "not inited"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_state:Lcom/hypergryph/sdk/HGSDK$State;

    sget-object v1, Lcom/hypergryph/sdk/HGSDK$State;->IDLE:Lcom/hypergryph/sdk/HGSDK$State;

    if-eq v0, v1, :cond_1

    .line 79
    const-string v0, "HGSDK"

    const-string v1, "HGSDK is busy now"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_1
    iget-wide v0, p1, Lcom/hypergryph/sdk/HGModels$PayInput;->timestamp:J

    invoke-static {v0, v1}, Lcom/hypergryph/sdk/utils/TimeUtil;->SyncBaseTime(J)V

    .line 83
    sget-object v0, Lcom/hypergryph/sdk/HGSDK$State;->PAYING:Lcom/hypergryph/sdk/HGSDK$State;

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_state:Lcom/hypergryph/sdk/HGSDK$State;

    .line 84
    iput-object p1, p0, Lcom/hypergryph/sdk/HGSDK;->m_payInput:Lcom/hypergryph/sdk/HGModels$PayInput;

    .line 85
    iput-object p2, p0, Lcom/hypergryph/sdk/HGSDK;->m_payCallback:Lcom/hypergryph/sdk/HGCallbacks$Pay;

    .line 86
    iget-object v0, p1, Lcom/hypergryph/sdk/HGModels$PayInput;->orderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_orderId:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/hypergryph/sdk/HGModels$PayInput;->signKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_signKey:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/hypergryph/sdk/HGSDK;->_goToPrePay()V

    goto :goto_0
.end method

.method public payAlipayUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, ""

    .line 177
    :goto_0
    return-object v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string v0, "%s%s"

    .line 177
    .local v0, "template":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v3, v3, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pay/createOrderAlipay"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    .end local v0    # "template":Ljava/lang/String;
    :cond_1
    const-string v0, "%s/%s"

    .restart local v0    # "template":Ljava/lang/String;
    goto :goto_1
.end method

.method public payInput()Lcom/hypergryph/sdk/HGModels$PayInput;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/hypergryph/sdk/HGSDK;->m_payInput:Lcom/hypergryph/sdk/HGModels$PayInput;

    return-object v0
.end method

.method public payWechatUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, ""

    .line 164
    :goto_0
    return-object v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v1, v1, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v0, "%s%s"

    .line 164
    .local v0, "template":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hypergryph/sdk/HGSDK;->m_initInput:Lcom/hypergryph/sdk/HGModels$InitInput;

    iget-object v3, v3, Lcom/hypergryph/sdk/HGModels$InitInput;->serverUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pay/createOrderWechat"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    .end local v0    # "template":Ljava/lang/String;
    :cond_1
    const-string v0, "%s/%s"

    .restart local v0    # "template":Ljava/lang/String;
    goto :goto_1
.end method
