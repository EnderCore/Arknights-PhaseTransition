.class Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;
.super Landroid/os/AsyncTask;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final HG_NETWORK_ERROR:Ljava/lang/String;

.field private final HG_NETWORK_TIMEOUT:Ljava/lang/String;

.field private m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

.field private m_isDebug:Z

.field private m_requestBody:Lorg/json/JSONObject;

.field private m_tryCount:I

.field private m_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Polling;)V
    .locals 2
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/hypergryph/sdk/HGCallbacks$Polling;

    .prologue
    const/4 v1, 0x0

    .line 118
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    .line 119
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput-boolean v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_isDebug:Z

    .line 114
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_TIMEOUT:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->HG_NETWORK_TIMEOUT:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_TIMEOUT:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->HG_NETWORK_ERROR:Ljava/lang/String;

    .line 116
    iput v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_tryCount:I

    .line 120
    iput-object p2, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    .line 122
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    .locals 13
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 140
    :goto_0
    new-instance v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    iget-object v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-direct {v3, v6, v12}, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Lcom/hypergryph/sdk/activity/BaseActivity$1;)V

    .line 142
    .local v3, "result":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    :try_start_0
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    iget-object v7, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_requestBody:Lorg/json/JSONObject;

    invoke-static {v6, v7}, Lcom/hypergryph/sdk/utils/HttpUtils;->httpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    .line 143
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z
    :try_end_0
    .catch Lcom/hypergryph/sdk/utils/HttpErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    iget-boolean v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    if-nez v6, :cond_3

    iget-boolean v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    if-nez v6, :cond_3

    .line 172
    .end local v3    # "result":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    :cond_0
    :goto_2
    return-object v3

    .line 144
    .restart local v3    # "result":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lcom/hypergryph/sdk/utils/HttpErrorException;
    iput-boolean v11, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    .line 146
    iget-boolean v6, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->isTimeout:Z

    if-eqz v6, :cond_1

    .line 147
    iput-boolean v10, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    .line 148
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->HG_NETWORK_TIMEOUT:Ljava/lang/String;

    iput-object v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->HG_NETWORK_ERROR:Ljava/lang/String;

    .line 151
    .local v4, "template":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 152
    const-string v4, "(%d)"

    .line 154
    :cond_2
    new-array v6, v10, [Ljava/lang/Object;

    iget v7, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->code:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    .line 155
    iget-object v6, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->errorInfo:Ljava/lang/String;

    iput-object v6, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    goto :goto_1

    .line 163
    .end local v0    # "e":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v4    # "template":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    iget-object v7, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hypergryph/sdk/HGCallbacks$Polling;->checkShouldContinue(Ljava/lang/String;)Z

    move-result v2

    .line 164
    .local v2, "isContinue":Z
    if-eqz v2, :cond_0

    .line 168
    iget v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_tryCount:I

    invoke-static {}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$200()[I

    move-result-object v7

    array-length v7, v7

    if-lt v6, v7, :cond_4

    .line 169
    new-instance v5, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    iget-object v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-direct {v5, v6, v12}, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Lcom/hypergryph/sdk/activity/BaseActivity$1;)V

    .line 170
    .local v5, "timeoutResult":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    iput-boolean v11, v5, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    .line 171
    iput-boolean v10, v5, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    move-object v3, v5

    .line 172
    goto :goto_2

    .line 174
    .end local v5    # "timeoutResult":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    :cond_4
    iget-boolean v6, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_isDebug:Z

    if-eqz v6, :cond_5

    .line 175
    const-string v6, "HGSDK Network"

    const-string v7, "request to %s is processing, continue with response:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    aput-object v9, v8, v11

    iget-object v9, v3, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_5
    invoke-static {}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$200()[I

    move-result-object v6

    iget v7, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_tryCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_tryCount:I

    aget v1, v6, v7

    .line 181
    .local v1, "interval":I
    int-to-long v6, v1

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 182
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->doInBackground([Ljava/lang/String;)Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;)V
    .locals 7
    .param p1, "result"    # Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 189
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->hideNetworkLoading()V

    .line 190
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-static {v0, v4}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$102(Lcom/hypergryph/sdk/activity/BaseActivity;Z)Z

    .line 191
    iget-boolean v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    if-eqz v0, :cond_2

    .line 192
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v1, "HGSDK Polling"

    const-string v2, "request to [%s] succeeded with body : %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    iget-object v1, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hypergryph/sdk/HGCallbacks$Polling;->onSucceed(Ljava/lang/String;)V

    .line 210
    :goto_1
    return-void

    .line 193
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 197
    :cond_2
    iget-boolean v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    if-eqz v0, :cond_4

    .line 198
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "HGSDK Polling"

    const-string v1, "request to [%s] timout"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGCallbacks$Polling;->onTimeout()V

    goto :goto_1

    .line 203
    :cond_4
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    const-string v1, "HGSDK Polling"

    const-string v2, "request to [%s] failed with info : %s, body : %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    :goto_2
    aput-object v0, v3, v5

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    :goto_3
    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    iget-object v1, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hypergryph/sdk/HGCallbacks$Polling;->onFail(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_6
    const-string v0, ""

    goto :goto_2

    :cond_7
    const-string v0, ""

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    invoke-virtual {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->onPostExecute(Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 127
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->showNetworkLoading()V

    .line 128
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Polling;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGCallbacks$Polling;->onRequest()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_requestBody:Lorg/json/JSONObject;

    .line 129
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_isDebug:Z

    .line 130
    iput v4, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_tryCount:I

    .line 131
    iget-boolean v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_isDebug:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v1, "HGSDK Network"

    const-string v2, "request to [%s] with body : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_url:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_requestBody:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->m_requestBody:Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    .line 132
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    return-void

    .line 133
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
