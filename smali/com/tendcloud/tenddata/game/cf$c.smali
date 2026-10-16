.class Lcom/tendcloud/tenddata/game/cf$c;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cf;

.field private b:I

.field private c:J

.field private d:Ljava/util/List;

.field private e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$c;->a:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->b:I

    return v0
.end method

.method a(Z)Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cf$a;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cf$c;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cf$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->e:Ljava/util/Map;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/game/cf$c;->b:I

    return-void
.end method

.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/cf$c;->c:J

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cf$c;->d:Ljava/util/List;

    return-void
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->c:J

    return-wide v0
.end method

.method c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->d:Ljava/util/List;

    return-object v0
.end method

.method d()Lcom/tendcloud/tenddata/game/cf$c;
    .locals 4

    new-instance v1, Lcom/tendcloud/tenddata/game/cf$c;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->a:Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/cf$c;-><init>(Lcom/tendcloud/tenddata/game/cf;)V

    iget v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->b:I

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/cf$c;->a(I)V

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/cf$c;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/tendcloud/tenddata/game/cf$c;->a(J)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cf$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cf$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cf$a;->f()Lcom/tendcloud/tenddata/game/cf$a;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cf$c;->a(Ljava/util/List;)V

    return-object v1
.end method
