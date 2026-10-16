.class final Lcom/tencent/bugly/agent/GameAgent$2;
.super Ljava/lang/Object;
.source "GameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/agent/GameAgent;->initCrashReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$strategy:Ljava/lang/Object;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$strategy:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v8, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->access$400()Z

    move-result v4

    iget-object v0, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$strategy:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "crashreport.CrashReport$UserStrategy"

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "crashreport.CrashReport"

    invoke-static {v3}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "initCrashReport"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$context:Landroid/content/Context;

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$appId:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$strategy:Ljava/lang/Object;

    aput-object v7, v6, v10

    new-array v7, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-static {v3, v5, v6, v7}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "initCrashReport"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$context:Landroid/content/Context;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$appId:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v9

    new-array v4, v10, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v4, v1

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v9

    invoke-static {v0, v3, v5, v4}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/agent/GameAgent$2;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->setUserId(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
