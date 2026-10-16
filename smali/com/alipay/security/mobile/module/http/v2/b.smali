.class public final Lcom/alipay/security/mobile/module/http/v2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/http/v2/a;


# static fields
.field private static a:Lcom/alipay/security/mobile/module/http/v2/a;

.field private static b:Lcom/alipay/security/mobile/module/http/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    if-nez v1, :cond_1

    .line 9000
    if-nez p0, :cond_2

    .line 0
    :goto_1
    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    new-instance v0, Lcom/alipay/security/mobile/module/http/v2/b;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/http/v2/b;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    goto :goto_0

    .line 9000
    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/b;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/security/mobile/module/http/model/c;
    .locals 4

    .prologue
    .line 1000
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;-><init>()V

    .line 2000
    iget-object v0, p1, Lcom/alipay/security/mobile/module/http/model/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->os:Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Lcom/alipay/security/mobile/module/http/model/d;->j:Ljava/lang/String;

    .line 1000
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->rpcVersion:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "apdid"

    .line 4000
    iget-object v3, p1, Lcom/alipay/security/mobile/module/http/model/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "apdidToken"

    .line 5000
    iget-object v3, p1, Lcom/alipay/security/mobile/module/http/model/d;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "umidToken"

    .line 6000
    iget-object v3, p1, Lcom/alipay/security/mobile/module/http/model/d;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/security/mobile/module/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string v2, "dynamicKey"

    .line 7000
    iget-object v3, p1, Lcom/alipay/security/mobile/module/http/model/d;->e:Ljava/lang/String;

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8000
    iget-object v0, p1, Lcom/alipay/security/mobile/module/http/model/d;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    :goto_0
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->deviceData:Ljava/util/Map;

    .line 0
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/module/http/a;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/model/b;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/security/mobile/module/http/model/c;

    move-result-object v0

    return-object v0

    .line 8000
    :cond_0
    iget-object v0, p1, Lcom/alipay/security/mobile/module/http/model/d;->f:Ljava/util/Map;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
