.class public Lcom/u8/sdk/analytics/UDAgent;
.super Ljava/lang/Object;
.source "UDAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/analytics/UDAgent$ISubmitListener;,
        Lcom/u8/sdk/analytics/UDAgent$SubmitTask;
    }
.end annotation


# static fields
.field private static instance:Lcom/u8/sdk/analytics/UDAgent;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/analytics/UDAgent;
    .locals 1

    sget-object v0, Lcom/u8/sdk/analytics/UDAgent;->instance:Lcom/u8/sdk/analytics/UDAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/analytics/UDAgent;

    invoke-direct {v0}, Lcom/u8/sdk/analytics/UDAgent;-><init>()V

    sput-object v0, Lcom/u8/sdk/analytics/UDAgent;->instance:Lcom/u8/sdk/analytics/UDAgent;

    :cond_0
    sget-object v0, Lcom/u8/sdk/analytics/UDAgent;->instance:Lcom/u8/sdk/analytics/UDAgent;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/u8/sdk/analytics/UDManager;->getInstance()Lcom/u8/sdk/analytics/UDManager;

    move-result-object v3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getAppID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->getCurrChannel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/u8/sdk/U8SDK;->getSubChannel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/u8/sdk/analytics/UDManager;->collectDeviceInfo(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/u8/sdk/analytics/UDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "U8SDK"

    const-string v4, "collect device info failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;

    new-instance v3, Lcom/u8/sdk/analytics/UDAgent$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/u8/sdk/analytics/UDAgent$1;-><init>(Lcom/u8/sdk/analytics/UDAgent;Landroid/app/Activity;Lcom/u8/sdk/analytics/UDevice;)V

    invoke-direct {v2, p0, v3}, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;-><init>(Lcom/u8/sdk/analytics/UDAgent;Lcom/u8/sdk/analytics/UDAgent$ISubmitListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit device info failed.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public submitUserInfo(Landroid/app/Activity;Lcom/u8/sdk/UserExtraData;)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->getUToken()Lcom/u8/sdk/verify/UToken;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "U8SDK"

    const-string v6, "utoken is null. submit user info failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/u8/sdk/analytics/UUserLog;

    invoke-direct {v1}, Lcom/u8/sdk/analytics/UUserLog;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getDataType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setUserID(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->getAppID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setAppID(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->getCurrChannel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setChannelID(Ljava/lang/Integer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getServerID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setServerID(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setServerName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getRoleID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setRoleID(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setRoleName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/u8/sdk/UserExtraData;->getRoleLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setRoleLevel(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/u8/sdk/utils/GUtils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setDeviceID(Ljava/lang/String;)V

    new-instance v3, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;

    new-instance v5, Lcom/u8/sdk/analytics/UDAgent$2;

    invoke-direct {v5, p0, p1, v1}, Lcom/u8/sdk/analytics/UDAgent$2;-><init>(Lcom/u8/sdk/analytics/UDAgent;Landroid/app/Activity;Lcom/u8/sdk/analytics/UUserLog;)V

    invoke-direct {v3, p0, v5}, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;-><init>(Lcom/u8/sdk/analytics/UDAgent;Lcom/u8/sdk/analytics/UDAgent$ISubmitListener;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v5}, Lcom/u8/sdk/analytics/UDAgent$SubmitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v5, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit user info failed.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setOpType(Ljava/lang/Integer;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_1
    const/4 v2, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setOpType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v2, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setOpType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v2, 0x1

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/u8/sdk/analytics/UUserLog;->setOpType(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
