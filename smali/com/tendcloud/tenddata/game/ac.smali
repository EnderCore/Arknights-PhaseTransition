.class public final Lcom/tendcloud/tenddata/game/ac;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Lcom/tendcloud/tenddata/game/ao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ay;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/tendcloud/tenddata/game/ac;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    .locals 6

    :try_start_0
    invoke-static {p0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    .locals 12

    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v3, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/game/ed;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Lcom/tendcloud/tenddata/game/ed;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;IDLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0}, Lcom/tendcloud/tenddata/game/ao;->removeGlobalKV(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    .locals 12

    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p6}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .locals 10

    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v1, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    .locals 12

    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v3, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/game/a;)V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    return v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/ao;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/game/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method public static b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/af$AccountType;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ao;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/game/as;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->e(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/ac;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string v0, "Init failed Context is null "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->a()Lcom/tendcloud/tenddata/game/zz;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0, p1}, Lcom/tendcloud/tenddata/game/ao;->d(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onKill(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/ac;->e(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ac;->a:Lcom/tendcloud/tenddata/game/ao;

    invoke-interface {v0, p0}, Lcom/tendcloud/tenddata/game/ao;->onKill(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
