.class public abstract Lcom/tendcloud/tenddata/game/a;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:Lcom/tendcloud/tenddata/game/a;

.field public static final b:Lcom/tendcloud/tenddata/game/a;

.field private static final c:Ljava/lang/String; = "JSON"

.field private static final d:Ljava/lang/String; = "PB"

.field private static final e:Ljava/lang/String; = "MP"

.field private static volatile h:Ljava/util/List;

.field private static final i:[Lcom/tendcloud/tenddata/game/a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->h:Ljava/util/List;

    new-instance v0, Lcom/tendcloud/tenddata/game/b;

    const-string v1, "ENV"

    invoke-direct {v0, v1, v3}, Lcom/tendcloud/tenddata/game/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    new-instance v0, Lcom/tendcloud/tenddata/game/c;

    const-string v1, "GAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    new-array v0, v3, [Lcom/tendcloud/tenddata/game/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->i:[Lcom/tendcloud/tenddata/game/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/a;->f:Ljava/lang/String;

    iput p2, p0, Lcom/tendcloud/tenddata/game/a;->g:I

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[Lcom/tendcloud/tenddata/game/a;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->i:[Lcom/tendcloud/tenddata/game/a;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->i:[Lcom/tendcloud/tenddata/game/a;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/a;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/a;->g:I

    return v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method
