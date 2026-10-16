.class public Lcom/hypergryph/sdk/BridgeContext;
.super Ljava/lang/Object;
.source "BridgeContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/BridgeContext$Output;,
        Lcom/hypergryph/sdk/BridgeContext$Input;,
        Lcom/hypergryph/sdk/BridgeContext$PayType;
    }
.end annotation


# static fields
.field private static s_inst:Lcom/hypergryph/sdk/BridgeContext;


# instance fields
.field public input:Lcom/hypergryph/sdk/BridgeContext$Input;

.field public isTriggeringBridge:Z

.field public output:Lcom/hypergryph/sdk/BridgeContext$Output;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/hypergryph/sdk/BridgeContext$Input;

    invoke-direct {v0}, Lcom/hypergryph/sdk/BridgeContext$Input;-><init>()V

    iput-object v0, p0, Lcom/hypergryph/sdk/BridgeContext;->input:Lcom/hypergryph/sdk/BridgeContext$Input;

    .line 28
    new-instance v0, Lcom/hypergryph/sdk/BridgeContext$Output;

    invoke-direct {v0}, Lcom/hypergryph/sdk/BridgeContext$Output;-><init>()V

    iput-object v0, p0, Lcom/hypergryph/sdk/BridgeContext;->output:Lcom/hypergryph/sdk/BridgeContext$Output;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hypergryph/sdk/BridgeContext;->isTriggeringBridge:Z

    return-void
.end method

.method public static Reset()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/hypergryph/sdk/BridgeContext;->s_inst:Lcom/hypergryph/sdk/BridgeContext;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/hypergryph/sdk/BridgeContext;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/hypergryph/sdk/BridgeContext;->s_inst:Lcom/hypergryph/sdk/BridgeContext;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/hypergryph/sdk/BridgeContext;

    invoke-direct {v0}, Lcom/hypergryph/sdk/BridgeContext;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/BridgeContext;->s_inst:Lcom/hypergryph/sdk/BridgeContext;

    .line 36
    :cond_0
    sget-object v0, Lcom/hypergryph/sdk/BridgeContext;->s_inst:Lcom/hypergryph/sdk/BridgeContext;

    return-object v0
.end method
