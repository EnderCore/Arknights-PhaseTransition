.class Lorg/windning/safearea/RomUtil;
.super Ljava/lang/Object;
.source "RomUtil.java"


# instance fields
.field private m_clsSystemProperty:Ljava/lang/Class;

.field private m_getSystemProperty:Ljava/lang/reflect/Method;

.field private m_isOldDeviceOrSimulator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lorg/windning/safearea/RomUtil;->m_clsSystemProperty:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v7

    iget-object v7, p0, Lorg/windning/safearea/RomUtil;->m_clsSystemProperty:Ljava/lang/Class;

    const-string v8, "get"

    invoke-virtual {v7, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lorg/windning/safearea/RomUtil;->m_getSystemProperty:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v2, 0x0

    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    if-eqz v4, :cond_0

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    :goto_1
    iput-boolean v5, p0, Lorg/windning/safearea/RomUtil;->m_isOldDeviceOrSimulator:Z

    return-void

    :catch_0
    move-exception v1

    const-string v7, "RomUtil"

    const-string v8, "SystemProperties not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v7, "RomUtil"

    const-string v8, "SystemProperties#get method not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private checkValidation()Z
    .locals 1

    iget-object v0, p0, Lorg/windning/safearea/RomUtil;->m_clsSystemProperty:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/windning/safearea/RomUtil;->m_getSystemProperty:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/windning/safearea/RomUtil;->checkValidation()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/windning/safearea/RomUtil;->m_getSystemProperty:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/windning/safearea/RomUtil;->m_clsSystemProperty:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public isHuaweiRom()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOldDeviceOrSimulator()Z
    .locals 3

    const-string v0, "OldDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is old device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/windning/safearea/RomUtil;->m_isOldDeviceOrSimulator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/windning/safearea/RomUtil;->m_isOldDeviceOrSimulator:Z

    return v0
.end method

.method public isOppo()Z
    .locals 3

    const-string v1, "ro.product.brand"

    invoke-virtual {p0, v1}, Lorg/windning/safearea/RomUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oppo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVivo()Z
    .locals 3

    const-string v1, "ro.vivo.os.name"

    invoke-virtual {p0, v1}, Lorg/windning/safearea/RomUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "funtouch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isXiaomi()Z
    .locals 2

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {p0, v1}, Lorg/windning/safearea/RomUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
