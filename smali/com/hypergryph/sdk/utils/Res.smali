.class public final Lcom/hypergryph/sdk/utils/Res;
.super Ljava/lang/Object;
.source "Res.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/utils/Res$Anim;,
        Lcom/hypergryph/sdk/utils/Res$ID;,
        Lcom/hypergryph/sdk/utils/Res$StringVal;,
        Lcom/hypergryph/sdk/utils/Res$Layout;
    }
.end annotation


# static fields
.field public static anim:Lcom/hypergryph/sdk/utils/Res$Anim;

.field public static id:Lcom/hypergryph/sdk/utils/Res$ID;

.field public static layout:Lcom/hypergryph/sdk/utils/Res$Layout;

.field private static m_isInited:Z

.field private static m_pkgName:Ljava/lang/String;

.field private static m_res:Landroid/content/res/Resources;

.field public static string:Lcom/hypergryph/sdk/utils/Res$StringVal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hypergryph/sdk/utils/Res;->m_isInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->m_pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/hypergryph/sdk/utils/Res;->m_res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static declared-synchronized getString(I)Ljava/lang/String;
    .locals 4
    .param p0, "identifier"    # I

    .prologue
    .line 32
    const-class v2, Lcom/hypergryph/sdk/utils/Res;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/hypergryph/sdk/utils/Res;->m_isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 33
    const/4 v0, 0x0

    .line 39
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 35
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->m_res:Landroid/content/res/Resources;

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcom/hypergryph/sdk/utils/TextUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "HGSDK"

    const-string v3, "getString encounters invalid identifier, please check whether string.xml is update-to-date"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static initIfNot(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-boolean v0, Lcom/hypergryph/sdk/utils/Res;->m_isInited:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hypergryph/sdk/utils/Res;->m_isInited:Z

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->m_res:Landroid/content/res/Resources;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->m_pkgName:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/hypergryph/sdk/utils/Res$Layout;

    invoke-direct {v0}, Lcom/hypergryph/sdk/utils/Res$Layout;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->layout:Lcom/hypergryph/sdk/utils/Res$Layout;

    .line 26
    new-instance v0, Lcom/hypergryph/sdk/utils/Res$ID;

    invoke-direct {v0}, Lcom/hypergryph/sdk/utils/Res$ID;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->id:Lcom/hypergryph/sdk/utils/Res$ID;

    .line 27
    new-instance v0, Lcom/hypergryph/sdk/utils/Res$StringVal;

    invoke-direct {v0}, Lcom/hypergryph/sdk/utils/Res$StringVal;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    .line 28
    new-instance v0, Lcom/hypergryph/sdk/utils/Res$Anim;

    invoke-direct {v0}, Lcom/hypergryph/sdk/utils/Res$Anim;-><init>()V

    sput-object v0, Lcom/hypergryph/sdk/utils/Res;->anim:Lcom/hypergryph/sdk/utils/Res$Anim;

    goto :goto_0
.end method
