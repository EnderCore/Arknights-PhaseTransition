.class public final enum Lcom/reyun/tracking/sdk/Tracking$PymentType;
.super Ljava/lang/Enum;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/sdk/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PymentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/reyun/tracking/sdk/Tracking$PymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reyun/tracking/sdk/Tracking$PymentType;

.field public static final enum APPLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

.field public static final enum FREE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

.field public static final enum GOOGLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

.field public static final enum UNIONPAY:Lcom/reyun/tracking/sdk/Tracking$PymentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    const-string v1, "UNIONPAY"

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$PymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->UNIONPAY:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    const-string v1, "APPLE"

    invoke-direct {v0, v1, v3}, Lcom/reyun/tracking/sdk/Tracking$PymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->APPLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v4}, Lcom/reyun/tracking/sdk/Tracking$PymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->FREE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v5}, Lcom/reyun/tracking/sdk/Tracking$PymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->GOOGLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/reyun/tracking/sdk/Tracking$PymentType;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$PymentType;->UNIONPAY:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$PymentType;->APPLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$PymentType;->FREE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$PymentType;->GOOGLE:Lcom/reyun/tracking/sdk/Tracking$PymentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->$VALUES:[Lcom/reyun/tracking/sdk/Tracking$PymentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reyun/tracking/sdk/Tracking$PymentType;
    .locals 1

    const-class v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;

    return-object v0
.end method

.method public static values()[Lcom/reyun/tracking/sdk/Tracking$PymentType;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking$PymentType;->$VALUES:[Lcom/reyun/tracking/sdk/Tracking$PymentType;

    invoke-virtual {v0}, [Lcom/reyun/tracking/sdk/Tracking$PymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reyun/tracking/sdk/Tracking$PymentType;

    return-object v0
.end method
