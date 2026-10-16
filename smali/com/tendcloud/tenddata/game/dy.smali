.class public final enum Lcom/tendcloud/tenddata/game/dy;
.super Ljava/lang/Enum;
.source "td"


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/dy;

.field public static final enum b:Lcom/tendcloud/tenddata/game/dy;

.field public static final enum c:Lcom/tendcloud/tenddata/game/dy;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/game/dy;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/game/dy;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v3, v2}, Lcom/tendcloud/tenddata/game/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dy;->a:Lcom/tendcloud/tenddata/game/dy;

    new-instance v0, Lcom/tendcloud/tenddata/game/dy;

    const-string v1, "CELLULAR"

    const-string v2, "cellular"

    invoke-direct {v0, v1, v4, v2}, Lcom/tendcloud/tenddata/game/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dy;->b:Lcom/tendcloud/tenddata/game/dy;

    new-instance v0, Lcom/tendcloud/tenddata/game/dy;

    const-string v1, "BLUETOOTH"

    const-string v2, "bluetooth"

    invoke-direct {v0, v1, v5, v2}, Lcom/tendcloud/tenddata/game/dy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dy;->c:Lcom/tendcloud/tenddata/game/dy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/dy;

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->a:Lcom/tendcloud/tenddata/game/dy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->b:Lcom/tendcloud/tenddata/game/dy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->c:Lcom/tendcloud/tenddata/game/dy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tendcloud/tenddata/game/dy;->e:[Lcom/tendcloud/tenddata/game/dy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/dy;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/dy;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/game/dy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/dy;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/dy;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/dy;->e:[Lcom/tendcloud/tenddata/game/dy;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/dy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/dy;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dy;->d:Ljava/lang/String;

    return-object v0
.end method
