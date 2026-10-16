.class public Lcom/tendcloud/tenddata/game/ab;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ab$b;,
        Lcom/tendcloud/tenddata/game/ab$c;,
        Lcom/tendcloud/tenddata/game/ab$a;
    }
.end annotation


# static fields
.field public static A:Z = false

.field public static B:Ljava/lang/String; = null

.field public static C:Z = false

.field public static final D:Ljava/lang/String; = "Android+TD+V4.0.12 gp"

.field static E:J = 0x0L

.field public static F:I = 0x0

.field public static G:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final H:I = 0x1b7740

.field public static final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final J:J = 0x7530L

.field public static final K:I = 0x64

.field public static final L:Ljava/lang/String; = "TD_APP_ID"

.field public static final M:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static final N:Ljava/lang/String; = "+V"

.field private static final O:I = 0x78

.field private static final P:I = 0x1e

.field private static final Q:I = 0x3e8

.field public static final a:Z = false

.field public static b:Z = false

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/Map;

.field public static e:Z = false

.field public static f:J = 0x0L

.field public static g:Landroid/content/Context; = null

.field public static h:Landroid/os/Handler; = null

.field public static final i:I = 0x1

.field public static final j:Ljava/lang/String; = "Android+"

.field public static k:Ljava/nio/channels/FileChannel; = null

.field public static l:J = 0x0L

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field public static final q:Ljava/lang/String; = "TD"

.field public static final r:Ljava/lang/String; = "TDLog"

.field public static s:Ljava/lang/String; = null

.field public static final t:Ljava/lang/String; = "397"

.field public static final u:Ljava/lang/String; = "TD_app_pefercen_profile"

.field public static final v:Ljava/lang/String; = "TD_appId_"

.field public static final w:Ljava/lang/String; = "TD_channelId"

.field public static final x:Ljava/lang/String; = "TD_sdk_last_send_time"

.field public static final y:Ljava/lang/String; = "isDeveloper"

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->b:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->e:Z

    sput-wide v4, Lcom/tendcloud/tenddata/game/ab;->f:J

    sput-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sput-object v2, Lcom/tendcloud/tenddata/game/ab;->h:Landroid/os/Handler;

    sput-wide v4, Lcom/tendcloud/tenddata/game/ab;->l:J

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->m:Z

    sput-boolean v3, Lcom/tendcloud/tenddata/game/ab;->n:Z

    sput-boolean v3, Lcom/tendcloud/tenddata/game/ab;->o:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->p:Z

    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    const-string v0, "Default"

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->A:Z

    sput-object v2, Lcom/tendcloud/tenddata/game/ab;->B:Ljava/lang/String;

    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->C:Z

    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/ab;->F:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Context or Service is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "TD_app_pefercen_profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_appId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/dp;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dp;-><init>()V

    packed-switch p0, :pswitch_data_0

    const-string v1, "Native"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dp;->setFrameWork(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Cocos2d"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dp;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    const-string v1, "Unity"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dp;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "AIR"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dp;->setFrameWork(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "PhoneGap"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dp;->setFrameWork(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD_appId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->h:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tendcloud/tenddata/game/ab;->f:J

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p1, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/ab;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->a()Lcom/tendcloud/tenddata/game/dm;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tendcloud/tenddata/game/dm;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->a()Lcom/tendcloud/tenddata/game/dm;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/tendcloud/tenddata/game/dm;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    sget v0, Lcom/tendcloud/tenddata/game/dz;->a:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ab;->a(I)V

    return-void

    :cond_2
    sput-object p0, Lcom/tendcloud/tenddata/game/ab;->s:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1d4c0

    :try_start_0
    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x7530

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TD_app_pefercen_profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TD_channelId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Default"

    invoke-static {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "TD_app_pefercen_profile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD_channelId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/game/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "TD_app_pefercen_profile"

    const-string v3, "isDeveloper"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/game/bj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "Native"

    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/dp;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dp;-><init>()V

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dp;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setDeveloperMode(Z)V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v4, "isDeveloper"

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v0, v1}, Lcom/tendcloud/tenddata/game/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
