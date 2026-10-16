.class Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;
.super Ljava/lang/Object;
.source "ReYunHttp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/utils/ReYunHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetRunnable"
.end annotation


# instance fields
.field private mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v11, "Tracking"

    const-string v12, "========== GET Request Begin =========="

    invoke-static {v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Tracking"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mUrl:Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v11, 0x1388

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x1388

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v11, "GET"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    instance-of v11, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v11, :cond_0

    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljavax/net/ssl/TrustManager;

    const/4 v13, 0x0

    new-instance v14, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable$1;

    invoke-direct {v14, p0}, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable$1;-><init>(Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;)V

    aput-object v14, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v11, v0

    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v11, 0xc8

    if-ne v11, v2, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "Tracking"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response json:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "status"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    invoke-interface {v11, v2, v5}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onSuccess(ILorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v12, "response Code=-2"

    invoke-interface {v11, v4, v12}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    new-instance v12, Ljava/lang/Exception;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Request server failed! response Code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v13, "message"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_1
    move-exception v4

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v12, "response Code=-3"

    invoke-interface {v11, v4, v12}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Request http server failed!"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response Code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_2
    move-exception v4

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v12, "response Code=-4"

    invoke-interface {v11, v4, v12}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v4

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v12, "response Code=-5"

    invoke-interface {v11, v4, v12}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v4

    iget-object v11, p0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v12, "response Code=-6"

    invoke-interface {v11, v4, v12}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
