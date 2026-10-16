.class public Lorg/windning/safearea/SafeAreaController;
.super Ljava/lang/Object;
.source "SafeAreaController.java"


# static fields
.field private static s_inst:Lorg/windning/safearea/SafeAreaController;


# instance fields
.field private m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

.field private m_nonRoundedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_romUtil:Lorg/windning/safearea/RomUtil;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/windning/safearea/SafeAreaController;->m_nonRoundedDevices:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/windning/safearea/SafeAreaController;->initDeviceManager(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lorg/windning/safearea/SafeAreaController;)Lorg/windning/safearea/IDeviceManager;
    .locals 1

    iget-object v0, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    return-object v0
.end method

.method private static getInstance(Landroid/app/Activity;)Lorg/windning/safearea/SafeAreaController;
    .locals 1

    sget-object v0, Lorg/windning/safearea/SafeAreaController;->s_inst:Lorg/windning/safearea/SafeAreaController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/windning/safearea/SafeAreaController;

    invoke-direct {v0, p0}, Lorg/windning/safearea/SafeAreaController;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/windning/safearea/SafeAreaController;->s_inst:Lorg/windning/safearea/SafeAreaController;

    :cond_0
    sget-object v0, Lorg/windning/safearea/SafeAreaController;->s_inst:Lorg/windning/safearea/SafeAreaController;

    return-object v0
.end method

.method protected static getRomUtil()Lorg/windning/safearea/RomUtil;
    .locals 1

    sget-object v0, Lorg/windning/safearea/SafeAreaController;->s_inst:Lorg/windning/safearea/SafeAreaController;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/windning/safearea/SafeAreaController;->s_inst:Lorg/windning/safearea/SafeAreaController;

    iget-object v0, v0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSafeArea(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/windning/safearea/SafeAreaController;->getInstance(Landroid/app/Activity;)Lorg/windning/safearea/SafeAreaController;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    invoke-virtual {v3}, Lorg/windning/safearea/RomUtil;->isOldDeviceOrSimulator()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-nez v2, :cond_1

    const-string v3, ""

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, v0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    invoke-interface {v3, p0}, Lorg/windning/safearea/IDeviceManager;->getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2, p0}, Lorg/windning/safearea/SafeAreaUtils;->normalizeScreenRect(Landroid/graphics/Rect;Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "left"

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "right"

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "top"

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "bottom"

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static getSystemWindowInsets(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    invoke-static {p0}, Lorg/windning/safearea/SafeAreaController;->getInstance(Landroid/app/Activity;)Lorg/windning/safearea/SafeAreaController;

    move-result-object v0

    iget-object v2, v0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    invoke-interface {v2, p0}, Lorg/windning/safearea/IDeviceManager;->getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private initDeviceManager(Landroid/app/Activity;)V
    .locals 2

    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    if-nez v1, :cond_0

    new-instance v1, Lorg/windning/safearea/RomUtil;

    invoke-direct {v1, p1}, Lorg/windning/safearea/RomUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    new-instance v1, Lorg/windning/safearea/PDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/PDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    if-nez v1, :cond_2

    new-instance v1, Lorg/windning/safearea/DefaultDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/DefaultDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_4

    new-instance v1, Lorg/windning/safearea/DefaultDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/DefaultDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    invoke-virtual {v1}, Lorg/windning/safearea/RomUtil;->isHuaweiRom()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/windning/safearea/HwDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/HwDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    invoke-virtual {v1}, Lorg/windning/safearea/RomUtil;->isXiaomi()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/windning/safearea/MiDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/MiDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    invoke-virtual {v1}, Lorg/windning/safearea/RomUtil;->isOppo()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/windning/safearea/OppoDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/OppoDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_romUtil:Lorg/windning/safearea/RomUtil;

    invoke-virtual {v1}, Lorg/windning/safearea/RomUtil;->isVivo()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/windning/safearea/VivoDeviceManagerImpl;

    invoke-direct {v1}, Lorg/windning/safearea/VivoDeviceManagerImpl;-><init>()V

    iput-object v1, p0, Lorg/windning/safearea/SafeAreaController;->m_deviceMngr:Lorg/windning/safearea/IDeviceManager;

    goto :goto_0
.end method

.method public static initWindowLayout(Landroid/app/Activity;Z)V
    .locals 3

    invoke-static {p0}, Lorg/windning/safearea/SafeAreaController;->getInstance(Landroid/app/Activity;)Lorg/windning/safearea/SafeAreaController;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/windning/safearea/SafeAreaController$1;

    invoke-direct {v2, v1, p0, p1}, Lorg/windning/safearea/SafeAreaController$1;-><init>(Lorg/windning/safearea/SafeAreaController;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private legacy_InitSpecialDevices(Landroid/app/Activity;)V
    .locals 6

    iget-object v4, p0, Lorg/windning/safearea/SafeAreaController;->m_nonRoundedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/windning/safearea/R$raw;->non_round_corner_device_list:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/windning/safearea/SafeAreaController;->m_nonRoundedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lorg/windning/safearea/SafeAreaController;->m_nonRoundedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "SafeAreaController"

    const-string v5, "non round corner list unavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v4

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method
