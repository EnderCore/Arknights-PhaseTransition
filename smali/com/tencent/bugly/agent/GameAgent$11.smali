.class final Lcom/tencent/bugly/agent/GameAgent$11;
.super Ljava/lang/Object;
.source "GameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/agent/GameAgent;->postCocosLuaException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$autoExit:Z

.field final synthetic val$category:I

.field final synthetic val$fStack:Ljava/lang/String;

.field final synthetic val$fType:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput p1, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$category:I

    iput-object p2, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$fType:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$fStack:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$autoExit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "crashreport.inner.InnerApi"

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "postCocos2dxCrashAsync"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$category:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$fType:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$message:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$fStack:Ljava/lang/String;

    aput-object v3, v2, v8

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/tencent/bugly/agent/GameAgent$11;->val$autoExit:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/tencent/bugly/agent/GameAgent;->access$700(J)V

    :cond_0
    return-void
.end method
