.class public Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    iput-object p5, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    iput-object p8, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    return-void
.end method

.method private a()D
    .locals 2

    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    return-wide v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()D
    .locals 2

    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    return-wide v0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D
    .locals 2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D
    .locals 2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
