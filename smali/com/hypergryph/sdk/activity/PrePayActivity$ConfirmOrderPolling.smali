.class Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;
.super Lcom/hypergryph/sdk/HGCallbacks$Polling;
.source "PrePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmOrderPolling"
.end annotation


# instance fields
.field private m_request:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;


# direct methods
.method public constructor <init>(Lcom/hypergryph/sdk/activity/PrePayActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-direct {p0}, Lcom/hypergryph/sdk/HGCallbacks$Polling;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->m_request:Lorg/json/JSONObject;

    .line 97
    return-void
.end method


# virtual methods
.method public checkShouldContinue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "response":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 108
    .local v2, "status":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 112
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "status":I
    :goto_0
    return v3

    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v2    # "status":I
    :cond_0
    move v3, v4

    .line 108
    goto :goto_0

    .line 109
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ConfirmOrder"

    const-string v6, "Confirm order failed with body %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v6, v3}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 112
    goto :goto_0
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_FAILED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$300(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->m_request:Lorg/json/JSONObject;

    return-object v0
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 9
    .param p1, "lastBody"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    const/4 v1, 0x0

    .line 119
    .local v1, "isSuc":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "response":Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 121
    .local v3, "status":I
    if-nez v3, :cond_0

    move v1, v4

    .line 126
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_1

    .line 127
    iget-object v5, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v5, v4}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V

    .line 131
    :goto_1
    return-void

    .restart local v2    # "response":Lorg/json/JSONObject;
    :cond_0
    move v1, v5

    .line 121
    goto :goto_0

    .line 122
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v3, -0x1

    .restart local v3    # "status":I
    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v7, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v7, v7, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_ERROR:I

    invoke-static {v7}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v7, v4}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v6, v4, v5}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$300(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$ConfirmOrderPolling;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V

    .line 139
    return-void
.end method
