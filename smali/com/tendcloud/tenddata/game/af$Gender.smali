.class public final enum Lcom/tendcloud/tenddata/game/af$Gender;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/game/af$Gender;

.field public static final enum UNKNOW:Lcom/tendcloud/tenddata/game/af$Gender;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->UNKNOW:Lcom/tendcloud/tenddata/game/af$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->MALE:Lcom/tendcloud/tenddata/game/af$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/game/af$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/game/af$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->FEMALE:Lcom/tendcloud/tenddata/game/af$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/af$Gender;

    sget-object v1, Lcom/tendcloud/tenddata/game/af$Gender;->UNKNOW:Lcom/tendcloud/tenddata/game/af$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/game/af$Gender;->MALE:Lcom/tendcloud/tenddata/game/af$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/game/af$Gender;->FEMALE:Lcom/tendcloud/tenddata/game/af$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->$VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/game/af$Gender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/af$Gender;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/game/af$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/af$Gender;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/af$Gender;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/af$Gender;->$VALUES:[Lcom/tendcloud/tenddata/game/af$Gender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/af$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/af$Gender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/game/af$Gender;->a:I

    return v0
.end method
