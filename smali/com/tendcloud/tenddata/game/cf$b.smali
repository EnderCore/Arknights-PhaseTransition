.class Lcom/tendcloud/tenddata/game/cf$b;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:I = 0xa

.field static final b:I = 0x3

.field static final c:I = 0x32

.field static final d:I = -0x55


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->f:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->g:I

    const/16 v0, -0x55

    iput v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->h:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->e:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/game/cf$b;->e:I

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->f:I

    return v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/game/cf$b;->f:I

    return-void
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->g:I

    return v0
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/game/cf$b;->g:I

    return-void
.end method

.method d()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$b;->h:I

    return v0
.end method

.method d(I)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/game/cf$b;->h:I

    return-void
.end method
