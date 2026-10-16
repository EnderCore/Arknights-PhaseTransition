.class public abstract Lcom/hypergryph/sdk/HGCallbacks$Polling;
.super Ljava/lang/Object;
.source "HGCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/HGCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Polling"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkShouldContinue(Ljava/lang/String;)Z
.end method

.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onRequest()Lorg/json/JSONObject;
.end method

.method public abstract onSucceed(Ljava/lang/String;)V
.end method

.method public abstract onTimeout()V
.end method
