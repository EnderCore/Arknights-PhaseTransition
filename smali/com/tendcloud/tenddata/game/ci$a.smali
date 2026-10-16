.class Lcom/tendcloud/tenddata/game/ci$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/ch;

.field public b:Lcom/tendcloud/tenddata/game/ch;

.field public c:D

.field final synthetic d:Lcom/tendcloud/tenddata/game/ci;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ch;Lcom/tendcloud/tenddata/game/ch;D)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ci$a;->d:Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ci$a;->a:Lcom/tendcloud/tenddata/game/ch;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ci$a;->b:Lcom/tendcloud/tenddata/game/ch;

    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/ci$a;->c:D

    return-void
.end method
