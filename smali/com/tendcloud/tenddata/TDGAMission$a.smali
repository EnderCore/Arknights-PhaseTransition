.class public final enum Lcom/tendcloud/tenddata/TDGAMission$a;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAMission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/TDGAMission$a;

.field public static final enum b:Lcom/tendcloud/tenddata/TDGAMission$a;

.field public static final enum c:Lcom/tendcloud/tenddata/TDGAMission$a;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/TDGAMission$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v4, v2}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->a:Lcom/tendcloud/tenddata/TDGAMission$a;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->b:Lcom/tendcloud/tenddata/TDGAMission$a;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3, v5}, Lcom/tendcloud/tenddata/TDGAMission$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->c:Lcom/tendcloud/tenddata/TDGAMission$a;

    new-array v0, v5, [Lcom/tendcloud/tenddata/TDGAMission$a;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAMission$a;->a:Lcom/tendcloud/tenddata/TDGAMission$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/TDGAMission$a;->b:Lcom/tendcloud/tenddata/TDGAMission$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/TDGAMission$a;->c:Lcom/tendcloud/tenddata/TDGAMission$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->e:[Lcom/tendcloud/tenddata/TDGAMission$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/TDGAMission$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAMission$a;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAMission$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAMission$a;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission$a;->e:[Lcom/tendcloud/tenddata/TDGAMission$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAMission$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAMission$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAMission$a;->d:I

    return v0
.end method
