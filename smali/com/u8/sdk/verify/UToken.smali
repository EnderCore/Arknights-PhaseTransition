.class public Lcom/u8/sdk/verify/UToken;
.super Ljava/lang/Object;
.source "UToken.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private sdkUserID:Ljava/lang/String;

.field private sdkUsername:Ljava/lang/String;

.field private suc:Z

.field private timestamp:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userID:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    iput-object p2, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    iput-object p5, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    iput-object p6, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    iput-object p7, p0, Lcom/u8/sdk/verify/UToken;->timestamp:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isSuc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    return-void
.end method

.method public setSdkUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    return-void
.end method

.method public setSdkUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    return-void
.end method

.method public setSuc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserID(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "suc"

    iget-boolean v3, p0, Lcom/u8/sdk/verify/UToken;->suc:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "userID"

    iget v3, p0, Lcom/u8/sdk/verify/UToken;->userID:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdkUserID"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->sdkUserID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkUsername"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->sdkUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extension"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    iget-object v3, p0, Lcom/u8/sdk/verify/UToken;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
