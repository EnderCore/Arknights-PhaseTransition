.class public Lcom/hypergryph/sdk/BridgeContext$Input;
.super Ljava/lang/Object;
.source "BridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/BridgeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# instance fields
.field public alipayOrderInfo:Ljava/lang/String;

.field public payType:Lcom/hypergryph/sdk/BridgeContext$PayType;

.field public wechatPayReq:Lcom/tencent/mm/opensdk/modelpay/PayReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
