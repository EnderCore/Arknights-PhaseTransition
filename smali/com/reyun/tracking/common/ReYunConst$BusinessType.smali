.class public final enum Lcom/reyun/tracking/common/ReYunConst$BusinessType;
.super Ljava/lang/Enum;
.source "ReYunConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/common/ReYunConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BusinessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/reyun/tracking/common/ReYunConst$BusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reyun/tracking/common/ReYunConst$BusinessType;

.field public static final enum Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    const-string v1, "Tracking"

    invoke-direct {v0, v1, v2}, Lcom/reyun/tracking/common/ReYunConst$BusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    sget-object v1, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->$VALUES:[Lcom/reyun/tracking/common/ReYunConst$BusinessType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/reyun/tracking/common/ReYunConst$BusinessType;
    .locals 1

    const-class v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    return-object v0
.end method

.method public static values()[Lcom/reyun/tracking/common/ReYunConst$BusinessType;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->$VALUES:[Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-virtual {v0}, [Lcom/reyun/tracking/common/ReYunConst$BusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    return-object v0
.end method
