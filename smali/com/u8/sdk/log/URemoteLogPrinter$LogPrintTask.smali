.class Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;
.super Ljava/util/TimerTask;
.source "URemoteLogPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/log/URemoteLogPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogPrintTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/log/URemoteLogPrinter;


# direct methods
.method constructor <init>(Lcom/u8/sdk/log/URemoteLogPrinter;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;->this$0:Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;->this$0:Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-virtual {v5}, Lcom/u8/sdk/log/URemoteLogPrinter;->getAndClear()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ULog;

    invoke-virtual {v1}, Lcom/u8/sdk/log/ULog;->toJSON()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, p0, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;->this$0:Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-virtual {v5}, Lcom/u8/sdk/log/URemoteLogPrinter;->stop()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "log"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;->this$0:Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-static {v5}, Lcom/u8/sdk/log/URemoteLogPrinter;->access$000(Lcom/u8/sdk/log/URemoteLogPrinter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
