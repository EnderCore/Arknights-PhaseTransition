.class public Lcom/tendcloud/tenddata/game/db;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;

.field public e:Landroid/util/Pair;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/db;->e:Landroid/util/Pair;

    return-void
.end method
