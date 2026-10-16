.class Lcom/hypergryph/sdk/activity/PrePayActivity$2;
.super Lcom/hypergryph/sdk/HGCallbacks$Network;
.source "PrePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hypergryph/sdk/activity/PrePayActivity;->_confirmOrderService(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

.field final synthetic val$request:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/hypergryph/sdk/activity/PrePayActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hypergryph/sdk/activity/PrePayActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    iput-object p2, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->val$request:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/hypergryph/sdk/HGCallbacks$Network;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "errorInfo"    # Ljava/lang/String;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_FAILED:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$300(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->val$request:Lorg/json/JSONObject;

    return-object v0
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 10
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "isSuc":Z
    const/4 v1, 0x0

    .line 158
    .local v1, "isPending":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "response":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 160
    .local v4, "status":I
    if-nez v4, :cond_0

    move v2, v5

    .line 161
    :goto_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    move v1, v5

    .line 166
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_1
    if-eqz v2, :cond_2

    .line 167
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v6, v5}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V

    .line 173
    :goto_2
    return-void

    .restart local v3    # "response":Lorg/json/JSONObject;
    :cond_0
    move v2, v6

    .line 160
    goto :goto_0

    :cond_1
    move v1, v6

    .line 161
    goto :goto_1

    .line 162
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const/4 v4, -0x1

    .restart local v4    # "status":I
    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v1, :cond_3

    .line 169
    iget-object v5, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    invoke-static {v5, v6}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$200(Lcom/hypergryph/sdk/activity/PrePayActivity;Z)V

    goto :goto_2

    .line 171
    :cond_3
    iget-object v7, p0, Lcom/hypergryph/sdk/activity/PrePayActivity$2;->this$0:Lcom/hypergryph/sdk/activity/PrePayActivity;

    sget-object v8, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v8, v8, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_CONFIRM_PAY_ERROR:I

    invoke-static {v8}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v8, v5}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v7, v5, v6}, Lcom/hypergryph/sdk/activity/PrePayActivity;->access$300(Lcom/hypergryph/sdk/activity/PrePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
