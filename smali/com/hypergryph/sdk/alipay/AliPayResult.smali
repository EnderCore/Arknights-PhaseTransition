.class public Lcom/hypergryph/sdk/alipay/AliPayResult;
.super Ljava/lang/Object;
.source "AliPayResult.java"


# static fields
.field private static final RESULT_STATUS_CANCEL:Ljava/lang/String; = "6001"

.field private static final RESULT_STATUS_CONTINUE:[Ljava/lang/String;

.field private static final RESULT_STATUS_SUC:Ljava/lang/String; = "9000"


# instance fields
.field private memo:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "9000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6004"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hypergryph/sdk/alipay/AliPayResult;->RESULT_STATUS_CONTINUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "rawResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_1

    .line 33
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    .local v0, "key":Ljava/lang/String;
    const-string v1, "resultStatus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_3
    const-string v1, "result"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->result:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_4
    const-string v1, "memo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->memo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public CheckEnsuredSuc()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "9000"

    iget-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public CheckIfNeedConfirmOrder()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v3, Lcom/hypergryph/sdk/alipay/AliPayResult;->RESULT_STATUS_CONTINUE:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 43
    .local v0, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 47
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    return v1

    .line 42
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public CheckIfUserCancel()Z
    .locals 2

    .prologue
    .line 51
    const-string v0, "6001"

    iget-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hypergryph/sdk/alipay/AliPayResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
