.class public final Lcom/alipay/security/mobile/module/http/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/v2/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/b;

    move-result-object v0

    goto :goto_0
.end method
