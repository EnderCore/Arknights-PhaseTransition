.class public Lcom/alipay/security/mobile/module/http/model/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/a;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/security/mobile/module/http/model/a;->a:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/a;->a:Z

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/a;->b:Ljava/lang/String;

    return-object v0
.end method
