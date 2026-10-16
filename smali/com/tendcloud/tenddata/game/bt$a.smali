.class Lcom/tendcloud/tenddata/game/bt$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/tendcloud/tenddata/game/bx;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bt$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bt$a;->b:Lcom/tendcloud/tenddata/game/bx;

    return-void
.end method
