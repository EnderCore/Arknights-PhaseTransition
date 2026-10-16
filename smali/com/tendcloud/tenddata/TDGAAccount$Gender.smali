.class public final enum Lcom/tendcloud/tenddata/TDGAAccount$Gender;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field public static final enum UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->MALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->FEMALE:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->$VALUES:[Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method


# virtual methods
.method public index()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->a:I

    return v0
.end method
