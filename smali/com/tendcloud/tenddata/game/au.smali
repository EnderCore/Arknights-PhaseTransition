.class public Lcom/tendcloud/tenddata/game/au;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/au$c;,
        Lcom/tendcloud/tenddata/game/au$b;,
        Lcom/tendcloud/tenddata/game/au$a;,
        Lcom/tendcloud/tenddata/game/au$d;,
        Lcom/tendcloud/tenddata/game/au$e;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static volatile c:Ljava/util/HashMap; = null

.field private static final d:I = 0x258

.field private static final e:I = 0xea60

.field private static final f:I = 0xea60

.field private static g:Landroid/content/Context;

.field private static volatile h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea60

    sput v0, Lcom/tendcloud/tenddata/game/au;->a:I

    sput v0, Lcom/tendcloud/tenddata/game/au;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 8

    sput-object p0, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->d()Ljava/lang/String;

    move-result-object v3

    const-string v5, "default"

    move-object v2, p2

    move-object v4, p3

    move-object v6, p1

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 8

    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 8

    sput-object p0, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 9

    new-instance v8, Lcom/tendcloud/tenddata/game/au$e;

    const/16 v0, 0x258

    invoke-direct {v8, v0}, Lcom/tendcloud/tenddata/game/au$e;-><init>(I)V

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget v1, v0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    iget v1, v0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v2, 0x258

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v8, v0

    :cond_3
    :try_start_4
    iget v0, v8, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_5

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :try_start_5
    iget v1, v0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v2, 0x258

    if-eq v1, v2, :cond_4

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v8, v0

    :cond_5
    :try_start_6
    iget v0, v8, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v0

    :try_start_7
    iget v1, v0, Lcom/tendcloud/tenddata/game/au$e;->a:I

    const/16 v2, 0x258

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v0, v8

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v8

    goto :goto_1

    :cond_6
    move-object v0, v8

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 7

    const/16 v6, 0x258

    :try_start_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v1, p4

    move-object v3, p6

    move-object v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/tendcloud/tenddata/game/au$e;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/au$e;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p1, p0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v2, 0x1

    move-object v1, p4

    move-object v3, p6

    move-object v4, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    :cond_3
    invoke-static {p3, v0, p5}, Lcom/tendcloud/tenddata/game/au;->a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/au$e;

    const-string v1, ""

    invoke-direct {v0, v6, v1}, Lcom/tendcloud/tenddata/game/au$e;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/au$e;
    .locals 10

    const/4 v7, 0x0

    const/16 v2, 0x258

    const v9, 0xea60

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/au$e;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/tendcloud/tenddata/game/au$e;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    check-cast v1, Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    :goto_1
    :try_start_3
    invoke-static {p2, v7}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    :goto_4
    sput v9, Lcom/tendcloud/tenddata/game/au;->a:I

    sput v9, Lcom/tendcloud/tenddata/game/au;->b:I

    array-length v2, p0

    int-to-long v2, v2

    invoke-static/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;)V

    :goto_5
    new-instance v1, Lcom/tendcloud/tenddata/game/au$e;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tendcloud/tenddata/game/au$e;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v2

    move-object v3, v7

    move-object v8, v7

    :goto_6
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_8
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_9
    sput v9, Lcom/tendcloud/tenddata/game/au;->a:I

    sput v9, Lcom/tendcloud/tenddata/game/au;->b:I

    array-length v2, p0

    int-to-long v2, v2

    invoke-static/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;)V

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v3, v7

    move-object v2, v7

    :goto_a
    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    :cond_b
    :goto_d
    sput v9, Lcom/tendcloud/tenddata/game/au;->a:I

    sput v9, Lcom/tendcloud/tenddata/game/au;->b:I

    array-length v2, p0

    int-to-long v2, v2

    invoke-static/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;)V

    throw v0

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_7

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v3

    goto :goto_b

    :catch_9
    move-exception v2

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v7

    goto :goto_a

    :catch_a
    move-exception v0

    move v0, v2

    move-object v8, v7

    goto :goto_6

    :catch_b
    move-exception v2

    move-object v8, v7

    goto :goto_6

    :catch_c
    move-exception v2

    move-object v8, v7

    goto :goto_6
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-class v2, Lcom/tendcloud/tenddata/game/au;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/au$a;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/au$a;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/au$a;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/au$a;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/au$a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_4
    const-string v2, "gzip"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_4
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x30a95a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p1, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;
    .locals 6

    const/4 v3, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/tendcloud/tenddata/game/au$d;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/au;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/au$d;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v2, Lcom/tendcloud/tenddata/game/av;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/av;-><init>()V

    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_1
    return-object p0

    :cond_0
    const-string v1, "TLSv1"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_1
.end method

.method public static a(ZLjava/security/cert/X509Certificate;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/tendcloud/tenddata/game/au$d;

    invoke-direct {v2, p1}, Lcom/tendcloud/tenddata/game/au$d;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v4}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/au;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/au$a;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/au$a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_2
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/au$a;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/au$a;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/au$a;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;)V
    .locals 5

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    const-string v2, "targetUrl"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-string v2, "targetIP"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    const-string v0, "reqSize"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "respTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(ZLjava/util/Map;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "errorMsg"

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/tendcloud/tenddata/game/au;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v4, v0

    :goto_1
    :try_start_2
    const-string v0, "GET"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_7

    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "/n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_6
    :try_start_7
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_7
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_2

    :cond_7
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v0

    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    :cond_8
    :goto_8
    if-eqz v4, :cond_0

    :try_start_c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    :goto_9
    if-eqz v3, :cond_9

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    :try_start_e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :cond_a
    :goto_b
    throw v2

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v4, v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_a
    move-exception v2

    move-object v3, v1

    move-object v4, v0

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_6

    :cond_b
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private static b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_1
    sget v1, Lcom/tendcloud/tenddata/game/au;->a:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/tendcloud/tenddata/game/au;->b:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/tendcloud/tenddata/game/au;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    new-instance v0, Lcom/tendcloud/tenddata/game/au$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/au$a;-><init>()V

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/au$a;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/tendcloud/tenddata/game/au$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/game/au;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/au$a;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/au$a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/au$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/game/au;->h:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/au$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
