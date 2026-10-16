.class Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;
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
    name = "PostRunnable"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mData:Ljava/lang/String;

    iput-object p3, p0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    :try_start_0
    const-string v12, "Tracking"

    const-string v13, "========== POST Request Begin =========="

    invoke-static {v12, v13}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Tracking"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Request url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mUrl:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Accept-Charset"

    const-string v13, "UTF-8"

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x1388

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x1388

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v12, "POST"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    instance-of v12, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_0

    const-string v12, "TLS"

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljavax/net/ssl/TrustManager;

    const/4 v14, 0x0

    new-instance v15, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable$1;

    invoke-direct/range {v15 .. v16}, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable$1;-><init>(Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;)V

    aput-object v15, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v13, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v12, v0

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mData:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string v12, "Tracking"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Request data:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mData:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mData:Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v12, 0xc8

    if-ne v12, v2, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "Tracking"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response json:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "status"

    const/4 v13, -0x1

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    invoke-interface {v12, v2, v6}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onSuccess(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    const-string v12, "Tracking"

    const-string v13, "********** Request End **********"

    invoke-static {v12, v13}, Lcom/reyun/tracking/common/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_3

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-2"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Request server failed! response Code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v14, "message"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    :catch_1
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-3"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Request http server failed!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "response Code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_2
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_7

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-4"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_8

    invoke-virtual {v5}, Ljava/security/KeyManagementException;->printStackTrace()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-5"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_9

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-6"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v5

    sget-boolean v12, Lcom/reyun/tracking/common/ReYunConst;->DebugMode:Z

    if-eqz v12, :cond_a

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;->mResponseHandler:Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;

    const-string v13, "response Code=-500"

    invoke-interface {v12, v5, v13}, Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
