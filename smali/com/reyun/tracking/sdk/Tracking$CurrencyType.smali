.class public final enum Lcom/reyun/tracking/sdk/Tracking$CurrencyType;
.super Ljava/lang/Enum;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/sdk/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/reyun/tracking/sdk/Tracking$CurrencyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum BRL:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum CAD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum CNY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum EUR:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum GBP:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum HKD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum JPY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum KRW:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum TWD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum USD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

.field public static final enum VND:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "CNY"

    invoke-direct {v0, v1, v3}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->CNY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "HKD"

    invoke-direct {v0, v1, v4}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->HKD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "JPY"

    invoke-direct {v0, v1, v5}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->JPY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "CAD"

    invoke-direct {v0, v1, v6}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->CAD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "KRW"

    invoke-direct {v0, v1, v7}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->KRW:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "GBP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->GBP:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "TWD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->TWD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "USD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->USD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "EUR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->EUR:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "VND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->VND:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    new-instance v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const-string v1, "BRL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->BRL:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->CNY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->HKD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->JPY:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->CAD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->KRW:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->GBP:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->TWD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->USD:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->EUR:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->VND:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->BRL:Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->$VALUES:[Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/reyun/tracking/sdk/Tracking$CurrencyType;
    .locals 1

    const-class v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    return-object v0
.end method

.method public static values()[Lcom/reyun/tracking/sdk/Tracking$CurrencyType;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->$VALUES:[Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    invoke-virtual {v0}, [Lcom/reyun/tracking/sdk/Tracking$CurrencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reyun/tracking/sdk/Tracking$CurrencyType;

    return-object v0
.end method
