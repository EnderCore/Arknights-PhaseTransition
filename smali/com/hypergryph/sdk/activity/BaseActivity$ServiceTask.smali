.class Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;
.super Landroid/os/AsyncTask;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceTask"
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

.field private m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Network;

.field private m_requestBody:Lorg/json/JSONObject;

.field private m_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callbacks"    # Lcom/hypergryph/sdk/HGCallbacks$Network;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_TIMEOUT:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->HG_NETWORK_TIMEOUT:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v0, v0, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_NETWORK_ERROR:I

    invoke-static {v0}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->HG_NETWORK_ERROR:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_url:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Network;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    .locals 7
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    new-instance v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Lcom/hypergryph/sdk/activity/BaseActivity$1;)V

    .line 68
    .local v1, "result":Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    :try_start_0
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_requestBody:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lcom/hypergryph/sdk/utils/HttpUtils;->httpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    .line 69
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z
    :try_end_0
    .catch Lcom/hypergryph/sdk/utils/HttpErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lcom/hypergryph/sdk/utils/HttpErrorException;
    iput-boolean v6, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    .line 72
    iget-boolean v3, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->isTimeout:Z

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->HG_NETWORK_TIMEOUT:Ljava/lang/String;

    iput-object v3, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    .line 74
    iput-boolean v5, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->HG_NETWORK_ERROR:Ljava/lang/String;

    .line 77
    .local v2, "template":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 78
    const-string v2, "(%d)"

    .line 80
    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    iget v4, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/hypergryph/sdk/utils/TextUtils;->formatSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    .line 81
    iget-object v3, v0, Lcom/hypergryph/sdk/utils/HttpErrorException;->errorInfo:Ljava/lang/String;

    iput-object v3, v1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->doInBackground([Ljava/lang/String;)Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

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

    .line 89
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 90
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->hideNetworkLoading()V

    .line 91
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-static {v0, v4}, Lcom/hypergryph/sdk/activity/BaseActivity;->access$102(Lcom/hypergryph/sdk/activity/BaseActivity;Z)Z

    .line 92
    iget-boolean v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isSucceed:Z

    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v1, "HGSDK Network"

    const-string v2, "request to [%s] succeeded with body : %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_url:Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Network;

    iget-object v1, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hypergryph/sdk/HGCallbacks$Network;->onSucceed(Ljava/lang/String;)V

    .line 106
    :goto_1
    return-void

    .line 94
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v1, "HGSDK Network"

    const-string v2, "request to [%s] failed with info : %s, body : %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_url:Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    :goto_2
    aput-object v0, v3, v5

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->body:Ljava/lang/String;

    :goto_3
    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Network;

    iget-object v1, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->errorInfo:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->isTimeout:Z

    invoke-virtual {v0, v1, v2}, Lcom/hypergryph/sdk/HGCallbacks$Network;->onFail(Ljava/lang/String;Z)V

    goto :goto_1

    .line 100
    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;

    invoke-virtual {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->onPostExecute(Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 56
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->showNetworkLoading()V

    .line 57
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_callbacks:Lcom/hypergryph/sdk/HGCallbacks$Network;

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGCallbacks$Network;->onRequest()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_requestBody:Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lcom/hypergryph/sdk/HGSDK;->getInstance()Lcom/hypergryph/sdk/HGSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hypergryph/sdk/HGSDK;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v1, "HGSDK Network"

    const-string v2, "request to [%s] with body : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_url:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_requestBody:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->m_requestBody:Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    .line 59
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void

    .line 60
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
