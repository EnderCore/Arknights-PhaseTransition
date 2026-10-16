.class public Lcom/hypergryph/sdk/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x28

.field public static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/hypergryph/sdk/utils/HttpUtils$2;

    invoke-direct {v0}, Lcom/hypergryph/sdk/utils/HttpUtils$2;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/utils/HttpUtils;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 23
    .param p0, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hypergryph/sdk/utils/HttpErrorException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 44
    .local v16, "result":Ljava/lang/String;
    const/16 v18, 0x0

    .line 45
    .local v18, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 46
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 47
    .local v10, "in":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 50
    .local v7, "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :try_start_0
    const-string v13, ""

    .line 51
    .local v13, "paramsEncoded":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 52
    const-string v20, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/hypergryph/sdk/utils/HttpUtils;->urlParamsFormat(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 55
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "fullUrl":Ljava/lang/String;
    const-string v20, "HGSDK"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "the fullUrl is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v18    # "url":Ljava/net/URL;
    .local v19, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "HTTPS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 62
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 63
    .local v9, "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object v3, v9

    .line 67
    .end local v9    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/16 v20, 0x28

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/16 v20, 0x28

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 70
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 71
    .local v15, "responseCode":I
    const/16 v20, 0x190

    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    .line 72
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v17, "strBuffer":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .end local v10    # "in":Ljava/io/InputStreamReader;
    .local v11, "in":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 76
    .local v12, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 77
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 93
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .local v8, "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .line 94
    .end local v6    # "fullUrl":Ljava/lang/String;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v15    # "responseCode":I
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .end local v19    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v18    # "url":Ljava/net/URL;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    new-instance v7, Lcom/hypergryph/sdk/utils/HttpErrorException;

    invoke-direct {v7}, Lcom/hypergryph/sdk/utils/HttpErrorException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 96
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    const/16 v20, 0x1

    :try_start_4
    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/hypergryph/sdk/utils/HttpErrorException;->isTimeout:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_1
    if-eqz v10, :cond_2

    .line 103
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v7, :cond_a

    .line 110
    throw v7

    .line 65
    .end local v18    # "url":Ljava/net/URL;
    .restart local v6    # "fullUrl":Ljava/lang/String;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_3
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 79
    .end local v10    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v15    # "responseCode":I
    .restart local v17    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v16

    move-object v10, v11

    .line 98
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v11    # "in":Ljava/io/InputStreamReader;
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    :goto_4
    if-eqz v3, :cond_5

    .line 99
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_5
    if-eqz v10, :cond_b

    .line 103
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v18, v19

    .line 106
    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_3

    .line 81
    .end local v12    # "line":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_6
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v5, "errorBuilder":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v14, "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "line":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 85
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 93
    .end local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "responseCode":I
    :catch_1
    move-exception v4

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_2

    .line 87
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "responseCode":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_7
    new-instance v8, Lcom/hypergryph/sdk/utils/HttpErrorException;

    invoke-direct {v8}, Lcom/hypergryph/sdk/utils/HttpErrorException;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 88
    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :try_start_a
    iput v15, v8, Lcom/hypergryph/sdk/utils/HttpErrorException;->code:I

    .line 89
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/hypergryph/sdk/utils/HttpErrorException;->isTimeout:Z

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/hypergryph/sdk/utils/HttpErrorException;->errorInfo:Ljava/lang/String;

    .line 91
    const-string v20, "U8SDK"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "post connection failed. code:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";url:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto :goto_4

    .line 104
    .end local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v18, v19

    .line 106
    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_3

    .line 104
    .end local v6    # "fullUrl":Ljava/lang/String;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v15    # "responseCode":I
    .local v4, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 105
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 98
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    :cond_8
    if-eqz v10, :cond_9

    .line 103
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 108
    :cond_9
    :goto_7
    throw v20

    .line 104
    :catch_4
    move-exception v4

    .line 105
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 112
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    return-object v16

    .line 98
    .end local v18    # "url":Ljava/net/URL;
    .restart local v6    # "fullUrl":Ljava/lang/String;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v10    # "in":Ljava/io/InputStreamReader;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v15    # "responseCode":I
    .restart local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v20

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v20

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "fullUrl":Ljava/lang/String;
    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "responseCode":I
    .local v4, "e":Ljava/lang/Exception;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :catchall_4
    move-exception v20

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto :goto_6

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto/16 :goto_2

    .end local v18    # "url":Ljava/net/URL;
    .restart local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "fullUrl":Ljava/lang/String;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "responseCode":I
    .restart local v19    # "url":Ljava/net/URL;
    :catch_6
    move-exception v4

    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .end local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_b
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_3
.end method

.method public static httpPost(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 23
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hypergryph/sdk/utils/HttpErrorException;
        }
    .end annotation

    .prologue
    .line 122
    const/16 v16, 0x0

    .line 123
    .local v16, "result":Ljava/lang/String;
    const/16 v18, 0x0

    .line 124
    .local v18, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 125
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 126
    .local v10, "in":Ljava/io/InputStreamReader;
    const/4 v7, 0x0

    .line 129
    .local v7, "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :try_start_0
    const-string v13, ""

    .line 130
    .local v13, "paramsEncoded":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    .line 134
    :cond_0
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v18    # "url":Ljava/net/URL;
    .local v19, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "HTTPS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 137
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 138
    .local v9, "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object v3, v9

    .line 143
    .end local v9    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 144
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 145
    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    const-string v20, "Content-Type"

    const-string v21, "application/json"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v20, "Charset"

    const-string v21, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v4, Ljava/io/DataOutputStream;

    .line 149
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v4, "dop":Ljava/io/DataOutputStream;
    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 152
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 154
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 155
    .local v15, "responseCode":I
    const/16 v20, 0x190

    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    .line 156
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v17, "strBuffer":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .end local v10    # "in":Ljava/io/InputStreamReader;
    .local v11, "in":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 160
    .local v12, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 161
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 176
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .local v8, "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .line 177
    .end local v4    # "dop":Ljava/io/DataOutputStream;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v15    # "responseCode":I
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .end local v19    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v18    # "url":Ljava/net/URL;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    new-instance v7, Lcom/hypergryph/sdk/utils/HttpErrorException;

    invoke-direct {v7}, Lcom/hypergryph/sdk/utils/HttpErrorException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 179
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    const/16 v20, 0x1

    :try_start_4
    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/hypergryph/sdk/utils/HttpErrorException;->isTimeout:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_1
    if-eqz v10, :cond_2

    .line 186
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v7, :cond_a

    .line 193
    throw v7

    .line 140
    .end local v18    # "url":Ljava/net/URL;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_3
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 163
    .end local v10    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "dop":Ljava/io/DataOutputStream;
    .restart local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v15    # "responseCode":I
    .restart local v17    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v16

    move-object v10, v11

    .line 181
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v11    # "in":Ljava/io/InputStreamReader;
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    :goto_4
    if-eqz v3, :cond_5

    .line 182
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_5
    if-eqz v10, :cond_b

    .line 186
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v18, v19

    .line 189
    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_3

    .line 165
    .end local v12    # "line":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_6
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v6, "errorBuilder":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    .local v14, "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "line":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 169
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 176
    .end local v4    # "dop":Ljava/io/DataOutputStream;
    .end local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "responseCode":I
    :catch_1
    move-exception v5

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_2

    .line 171
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v4    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "responseCode":I
    .restart local v19    # "url":Ljava/net/URL;
    :cond_7
    new-instance v8, Lcom/hypergryph/sdk/utils/HttpErrorException;

    invoke-direct {v8}, Lcom/hypergryph/sdk/utils/HttpErrorException;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 172
    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :try_start_a
    iput v15, v8, Lcom/hypergryph/sdk/utils/HttpErrorException;->code:I

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/hypergryph/sdk/utils/HttpErrorException;->errorInfo:Ljava/lang/String;

    .line 174
    const-string v20, "HGSDK"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "post connection failed. code:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";url:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto :goto_4

    .line 187
    .end local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .line 188
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v18, v19

    .line 189
    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_3

    .line 187
    .end local v4    # "dop":Ljava/io/DataOutputStream;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v15    # "responseCode":I
    .local v5, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 188
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 181
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_8
    if-eqz v10, :cond_9

    .line 186
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 191
    :cond_9
    :goto_7
    throw v20

    .line 187
    :catch_4
    move-exception v5

    .line 188
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 195
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    return-object v16

    .line 181
    .end local v18    # "url":Ljava/net/URL;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v10    # "in":Ljava/io/InputStreamReader;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v4    # "dop":Ljava/io/DataOutputStream;
    .restart local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v15    # "responseCode":I
    .restart local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v20

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "in":Ljava/io/InputStreamReader;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v17    # "strBuffer":Ljava/lang/StringBuilder;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v20

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_6

    .end local v4    # "dop":Ljava/io/DataOutputStream;
    .end local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "paramsEncoded":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "responseCode":I
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    :catchall_4
    move-exception v20

    move-object v7, v8

    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto :goto_6

    .line 176
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    move-object v8, v7

    .end local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    goto/16 :goto_2

    .end local v18    # "url":Ljava/net/URL;
    .restart local v4    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "paramsEncoded":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "responseCode":I
    .restart local v19    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .end local v6    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v7    # "httpException":Lcom/hypergryph/sdk/utils/HttpErrorException;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_b
    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_3
.end method

.method public static trustAllHosts()V
    .locals 5

    .prologue
    .line 232
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/hypergryph/sdk/utils/HttpUtils$1;

    invoke-direct {v4}, Lcom/hypergryph/sdk/utils/HttpUtils$1;-><init>()V

    aput-object v4, v2, v3

    .line 248
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 249
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 251
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static urlParamsFormat(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 214
    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "encodedName":Ljava/lang/String;
    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "encodedValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 217
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 220
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v1    # "encodedValue":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
