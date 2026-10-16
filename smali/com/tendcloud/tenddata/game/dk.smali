.class public Lcom/tendcloud/tenddata/game/dk;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    const-string v0, "type"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->a:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->c:Ljava/lang/String;

    const-string v0, "extra1"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->d:Ljava/lang/String;

    const-string v0, "extra2"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->e:Ljava/lang/String;

    const-string v0, "targetApp"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setExtra1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTargetApp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dk;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
