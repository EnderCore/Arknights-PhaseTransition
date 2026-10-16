.class public final enum Lcom/tendcloud/tenddata/game/da$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/da$a;

.field public static final enum b:Lcom/tendcloud/tenddata/game/da$a;

.field private static final synthetic d:[Lcom/tendcloud/tenddata/game/da$a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/game/da$a;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/game/da$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/da$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3, v3}, Lcom/tendcloud/tenddata/game/da$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/da$a;->b:Lcom/tendcloud/tenddata/game/da$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/da$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/game/da$a;->b:Lcom/tendcloud/tenddata/game/da$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tendcloud/tenddata/game/da$a;->d:[Lcom/tendcloud/tenddata/game/da$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/da$a;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/da$a;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/game/da$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/da$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/da$a;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/da$a;->d:[Lcom/tendcloud/tenddata/game/da$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/da$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/da$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/da$a;->c:I

    return v0
.end method
