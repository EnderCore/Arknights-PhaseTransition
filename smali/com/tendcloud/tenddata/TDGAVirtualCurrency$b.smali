.class public final enum Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

.field public static final enum b:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

.field private static final synthetic d:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v3, v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->a:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    new-instance v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v4}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->b:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    new-array v0, v4, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->a:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->b:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->d:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->d:[Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->c:I

    return v0
.end method
