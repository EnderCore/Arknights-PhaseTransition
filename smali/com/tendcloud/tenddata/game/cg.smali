.class Lcom/tendcloud/tenddata/game/cg;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cf;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg;->a:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/cf$d;Lcom/tendcloud/tenddata/game/cf$d;)I
    .locals 4

    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cf$d;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/cf$d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/cf$d;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/cf$d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tendcloud/tenddata/game/cf$d;

    check-cast p2, Lcom/tendcloud/tenddata/game/cf$d;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/cg;->a(Lcom/tendcloud/tenddata/game/cf$d;Lcom/tendcloud/tenddata/game/cf$d;)I

    move-result v0

    return v0
.end method
