.class public Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final UMIDTOKEN_FILE_NAME:Ljava/lang/String; = "xxxwww_v2"

.field private static final UMIDTOKEN_KEY_NAME:Ljava/lang/String; = "umidtk"

.field private static volatile cachedUmidToken:Ljava/lang/String;

.field private static volatile initUmidFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->initUmidFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compatUmidBug(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000000000000000000000000"

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    :cond_2
    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public static declared-synchronized getSecurityToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static declared-synchronized updateLocalUmidToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xxxwww_v2"

    const-string v2, "umidtk"

    invoke-static {p0, v0, v2, p1}, Lcom/alipay/security/mobile/module/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->cachedUmidToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
