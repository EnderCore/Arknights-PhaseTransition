.class public Lcom/u8/sdk/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static instance:Lcom/u8/sdk/log/Log;


# instance fields
.field private enable:Z

.field private isInited:Z

.field private level:Ljava/lang/String;

.field private local:Z

.field private logPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/log/ILog;",
            ">;"
        }
    .end annotation
.end field

.field private remote:Z

.field private remoteInterval:I

.field private remoteUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/u8/sdk/log/Log;

    invoke-direct {v0}, Lcom/u8/sdk/log/Log;-><init>()V

    sput-object v0, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/u8/sdk/log/Log;->isInited:Z

    iput-boolean v0, p0, Lcom/u8/sdk/log/Log;->enable:Z

    const-string v0, "DEBUG"

    iput-object v0, p0, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/u8/sdk/log/Log;->local:Z

    iput-boolean v1, p0, Lcom/u8/sdk/log/Log;->remote:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/u8/sdk/log/Log;->remoteInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/u8/sdk/log/Log;->remoteUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/u8/sdk/log/Log;
    .locals 1

    sget-object v0, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/u8/sdk/log/Log;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/u8/sdk/log/Log;->remote:Z

    return v0
.end method

.method static synthetic access$200(Lcom/u8/sdk/log/Log;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/log/Log;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v2, "DEBUG"

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/u8/sdk/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static destory()V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1}, Lcom/u8/sdk/log/ILog;->destory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/u8/sdk/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1, p2}, Lcom/u8/sdk/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v2, "DEBUG"

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "INFO"

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/u8/sdk/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-boolean v1, v1, Lcom/u8/sdk/log/Log;->isInited:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    invoke-direct {v1, p0}, Lcom/u8/sdk/log/Log;->parseConfig(Landroid/content/Context;)V

    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v1, v1, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-boolean v1, v1, Lcom/u8/sdk/log/Log;->enable:Z

    if-nez v1, :cond_1

    const-string v1, "ULOG"

    const-string v2, "the log is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-boolean v1, v1, Lcom/u8/sdk/log/Log;->local:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v1, v1, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    new-instance v2, Lcom/u8/sdk/log/ULocalLog;

    invoke-direct {v2}, Lcom/u8/sdk/log/ULocalLog;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-boolean v1, v1, Lcom/u8/sdk/log/Log;->remote:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v1, v1, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    new-instance v2, Lcom/u8/sdk/log/URemoteLog;

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->remoteUrl:Ljava/lang/String;

    sget-object v4, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget v4, v4, Lcom/u8/sdk/log/Log;->remoteInterval:I

    invoke-direct {v2, v3, v4}, Lcom/u8/sdk/log/URemoteLog;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lcom/u8/sdk/log/Log$1;

    invoke-direct {v1}, Lcom/u8/sdk/log/Log$1;-><init>()V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v1, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/u8/sdk/log/Log;->isInited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseConfig(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.enable"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.enable"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/u8/sdk/log/Log;->enable:Z

    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.level"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.level"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.local"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.local"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/u8/sdk/log/Log;->local:Z

    :cond_2
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/u8/sdk/log/Log;->remote:Z

    :cond_3
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote_interval"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote_interval"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/u8/sdk/log/Log;->remoteInterval:I

    :cond_4
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ulog.remote_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/u8/sdk/log/Log;->remoteUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v2, "ERROR"

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/u8/sdk/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    const-string v2, "ERROR"

    sget-object v3, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v3, v3, Lcom/u8/sdk/log/Log;->level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/u8/sdk/log/Log;->instance:Lcom/u8/sdk/log/Log;

    iget-object v2, v2, Lcom/u8/sdk/log/Log;->logPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/log/ILog;

    invoke-interface {v1, p0, p1, p2}, Lcom/u8/sdk/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
