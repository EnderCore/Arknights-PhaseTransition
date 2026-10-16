.class public Lcom/hypergryph/sdk/HGModels$PayInput;
.super Ljava/lang/Object;
.source "HGModels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/HGModels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayInput"
.end annotation


# instance fields
.field public extraData:Ljava/lang/String;

.field public gsTradeNo:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public signKey:Ljava/lang/String;

.field public timestamp:J

.field public token:Ljava/lang/String;

.field public worldId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
