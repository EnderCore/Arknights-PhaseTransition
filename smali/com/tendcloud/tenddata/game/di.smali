.class Lcom/tendcloud/tenddata/game/di;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/dh;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/di;->a:Lcom/tendcloud/tenddata/game/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/di;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
