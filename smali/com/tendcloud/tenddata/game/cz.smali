.class public Lcom/tendcloud/tenddata/game/cz;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tendcloud/tenddata/game/cz;->a:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/cz;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/game/cz;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/cz;->d:I

    return-void
.end method
