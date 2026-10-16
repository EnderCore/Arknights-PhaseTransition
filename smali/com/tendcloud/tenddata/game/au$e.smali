.class public Lcom/tendcloud/tenddata/game/au$e;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/game/au$e;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/au$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/au$e;->b:Ljava/lang/String;

    return-object v0
.end method
