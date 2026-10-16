.class public Lcom/tendcloud/tenddata/game/da;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/da$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/a;

.field public b:Lcom/tendcloud/tenddata/game/da$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/da;->a:Lcom/tendcloud/tenddata/game/a;

    sget-object v0, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/da;->b:Lcom/tendcloud/tenddata/game/da$a;

    return-void
.end method
