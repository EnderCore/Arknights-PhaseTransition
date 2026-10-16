.class Lcom/tendcloud/tenddata/game/cf$d;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/tendcloud/tenddata/game/cf$c;

.field b:Lcom/tendcloud/tenddata/game/cf$c;

.field c:D

.field final synthetic d:Lcom/tendcloud/tenddata/game/cf;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cf;Lcom/tendcloud/tenddata/game/cf$c;Lcom/tendcloud/tenddata/game/cf$c;D)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$d;->d:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cf$d;->a:Lcom/tendcloud/tenddata/game/cf$c;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cf$d;->b:Lcom/tendcloud/tenddata/game/cf$c;

    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/cf$d;->c:D

    return-void
.end method
