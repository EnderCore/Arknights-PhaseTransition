.class public Lcom/reyun/tracking/common/ReYunConst;
.super Ljava/lang/Object;
.source "ReYunConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/common/ReYunConst$BusinessType;,
        Lcom/reyun/tracking/common/ReYunConst$ResponseCode;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "http://log.reyun.com/"

.field public static final CONNECT_TIMEOUT:I = 0x1388

.field public static DebugMode:Z = false

.field public static final READ_TIMEOUT:I = 0x1388

.field public static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TAG:Ljava/lang/String; = "Tracking"

.field public static autoTrackEnable:Z

.field public static ry_sdk_name:Ljava/lang/String;

.field public static ry_sdk_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    sput-boolean v0, Lcom/reyun/tracking/common/ReYunConst;->autoTrackEnable:Z

    const-string v0, "Android"

    sput-object v0, Lcom/reyun/tracking/common/ReYunConst;->ry_sdk_name:Ljava/lang/String;

    const-string v0, "1.0.0"

    sput-object v0, Lcom/reyun/tracking/common/ReYunConst;->ry_sdk_version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
