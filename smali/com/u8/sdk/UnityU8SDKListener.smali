.class public Lcom/u8/sdk/UnityU8SDKListener;
.super Ljava/lang/Object;
.source "UnityU8SDKListener.java"

# interfaces
.implements Lcom/u8/sdk/base/IU8SDKListener;


# instance fields
.field private context:Lcom/u8/sdk/U8UnityContext;

.field private isSwitchAccount:Z


# direct methods
.method public constructor <init>(Lcom/u8/sdk/U8UnityContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    iput-object p1, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    return-void
.end method

.method static synthetic access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    return-object v0
.end method


# virtual methods
.method public onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "isSuc"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSwitchAccount"

    iget-boolean v3, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "userID"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdkUserID"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkUsername"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnLoginSuc"

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLogout()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnLogout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProductQueryResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/ProductQueryResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 3

    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult with code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/UnityU8SDKListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/u8/sdk/UnityU8SDKListener$1;-><init>(Lcom/u8/sdk/UnityU8SDKListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSinglePayResult(ILcom/u8/sdk/U8Order;)V
    .locals 0

    return-void
.end method

.method public onSwitchAccount()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnSwitchAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnLoginSuc"

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
