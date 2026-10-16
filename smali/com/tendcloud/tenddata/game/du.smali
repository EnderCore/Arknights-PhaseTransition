.class public Lcom/tendcloud/tenddata/game/du;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "osVersionName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "osVersionCode"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "locale"

    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timezoneV"

    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "language"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "romVersion"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "basebandVersion"

    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "osBuild"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    :try_start_0
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()F
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/du;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "timezoneV"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/du;->a_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
