.class Lcom/reyun/tracking/sdk/Tracking$8$1;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reyun/tracking/sdk/Tracking$8;

.field final synthetic val$data:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/sdk/Tracking$8;Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/Tracking$8$1;->this$0:Lcom/reyun/tracking/sdk/Tracking$8;

    iput-object p2, p0, Lcom/reyun/tracking/sdk/Tracking$8$1;->val$data:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const-string v0, "TrackingIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############sendFailureRecord  failure ############ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    const-string v4, "status"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "status"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v4, v5}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/reyun/tracking/sdk/Tracking$8$1;->val$data:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    iget-object v4, v4, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/reyun/tracking/sdk/Tracking$8$1;->val$data:Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;

    iget-object v4, v4, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->deleteFromById(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "TrackingIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==============sendFailureRecord  SUCCESS =========="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v4, "TrackingIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request Failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/reyun/tracking/common/CommonUtil;->printErrLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
