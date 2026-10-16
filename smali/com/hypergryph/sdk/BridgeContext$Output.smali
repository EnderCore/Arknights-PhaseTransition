.class public Lcom/hypergryph/sdk/BridgeContext$Output;
.super Ljava/lang/Object;
.source "BridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/BridgeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# instance fields
.field public alipayResult:Lcom/hypergryph/sdk/alipay/AliPayResult;

.field public isPayFinished:Z

.field public wechatResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hypergryph/sdk/BridgeContext$Output;->isPayFinished:Z

    return-void
.end method
