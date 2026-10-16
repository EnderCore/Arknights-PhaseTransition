.class final Lcom/tendcloud/tenddata/game/cv;
.super Landroid/telephony/PhoneStateListener;
.source "td"


# static fields
.field static final a:J = 0x2bf20L


# instance fields
.field b:J

.field c:J

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->b:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cv;->e:I

    return-void
.end method

.method private a()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->b:J

    iget v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/game/cv;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->b:J

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/cv;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v1, "cellUpdate"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->b:J

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cv;->c:J

    iget v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:I

    iput v0, p0, Lcom/tendcloud/tenddata/game/cv;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cv;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cv;->d:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cv;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
