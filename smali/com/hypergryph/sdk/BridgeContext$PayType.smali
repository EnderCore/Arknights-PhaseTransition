.class public final enum Lcom/hypergryph/sdk/BridgeContext$PayType;
.super Ljava/lang/Enum;
.source "BridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/BridgeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hypergryph/sdk/BridgeContext$PayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hypergryph/sdk/BridgeContext$PayType;

.field public static final enum ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

.field public static final enum WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/hypergryph/sdk/BridgeContext$PayType;

    const-string v1, "ALIPAY"

    invoke-direct {v0, v1, v2}, Lcom/hypergryph/sdk/BridgeContext$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hypergryph/sdk/BridgeContext$PayType;->ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

    new-instance v0, Lcom/hypergryph/sdk/BridgeContext$PayType;

    const-string v1, "WECHAT"

    invoke-direct {v0, v1, v3}, Lcom/hypergryph/sdk/BridgeContext$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hypergryph/sdk/BridgeContext$PayType;->WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hypergryph/sdk/BridgeContext$PayType;

    sget-object v1, Lcom/hypergryph/sdk/BridgeContext$PayType;->ALIPAY:Lcom/hypergryph/sdk/BridgeContext$PayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hypergryph/sdk/BridgeContext$PayType;->WECHAT:Lcom/hypergryph/sdk/BridgeContext$PayType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hypergryph/sdk/BridgeContext$PayType;->$VALUES:[Lcom/hypergryph/sdk/BridgeContext$PayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hypergryph/sdk/BridgeContext$PayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/hypergryph/sdk/BridgeContext$PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hypergryph/sdk/BridgeContext$PayType;

    return-object v0
.end method

.method public static values()[Lcom/hypergryph/sdk/BridgeContext$PayType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/hypergryph/sdk/BridgeContext$PayType;->$VALUES:[Lcom/hypergryph/sdk/BridgeContext$PayType;

    invoke-virtual {v0}, [Lcom/hypergryph/sdk/BridgeContext$PayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hypergryph/sdk/BridgeContext$PayType;

    return-object v0
.end method
