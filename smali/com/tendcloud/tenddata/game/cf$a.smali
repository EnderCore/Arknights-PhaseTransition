.class Lcom/tendcloud/tenddata/game/cf$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cf;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:B

.field private e:B

.field private f:B


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cf;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->a:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->b:Ljava/lang/String;

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->c:Ljava/lang/String;

    const/16 v0, -0x7f

    iput-byte v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->d:B

    iput-byte v1, p0, Lcom/tendcloud/tenddata/game/cf$a;->e:B

    iput-byte v1, p0, Lcom/tendcloud/tenddata/game/cf$a;->f:B

    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/cf;Ljava/lang/String;Ljava/lang/String;BBB)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->a:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cf$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cf$a;->c:Ljava/lang/String;

    iput-byte p4, p0, Lcom/tendcloud/tenddata/game/cf$a;->d:B

    iput-byte p5, p0, Lcom/tendcloud/tenddata/game/cf$a;->e:B

    iput-byte p6, p0, Lcom/tendcloud/tenddata/game/cf$a;->f:B

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->d:B

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->b:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method b(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->e:B

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->c:Ljava/lang/String;

    return-void
.end method

.method c()B
    .locals 1

    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->d:B

    return v0
.end method

.method c(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tendcloud/tenddata/game/cf$a;->f:B

    return-void
.end method

.method d()B
    .locals 1

    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->e:B

    return v0
.end method

.method e()B
    .locals 1

    iget-byte v0, p0, Lcom/tendcloud/tenddata/game/cf$a;->f:B

    return v0
.end method

.method f()Lcom/tendcloud/tenddata/game/cf$a;
    .locals 7

    new-instance v0, Lcom/tendcloud/tenddata/game/cf$a;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cf$a;->a:Lcom/tendcloud/tenddata/game/cf;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cf$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cf$a;->c:Ljava/lang/String;

    iget-byte v4, p0, Lcom/tendcloud/tenddata/game/cf$a;->d:B

    iget-byte v5, p0, Lcom/tendcloud/tenddata/game/cf$a;->e:B

    iget-byte v6, p0, Lcom/tendcloud/tenddata/game/cf$a;->f:B

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/cf$a;-><init>(Lcom/tendcloud/tenddata/game/cf;Ljava/lang/String;Ljava/lang/String;BBB)V

    return-object v0
.end method
