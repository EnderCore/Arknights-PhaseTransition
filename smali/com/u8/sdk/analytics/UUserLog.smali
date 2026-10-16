.class public Lcom/u8/sdk/analytics/UUserLog;
.super Ljava/lang/Object;
.source "UUserLog.java"


# static fields
.field public static final OP_CREATE_ROLE:I = 0x1

.field public static final OP_ENTER_GAME:I = 0x2

.field public static final OP_EXIT:I = 0x4

.field public static final OP_LEVEL_UP:I = 0x3


# instance fields
.field private appID:Ljava/lang/Integer;

.field private channelID:Ljava/lang/Integer;

.field private deviceID:Ljava/lang/String;

.field private opType:Ljava/lang/Integer;

.field private roleID:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private userID:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->appID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelID()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->channelID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getOpType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->opType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->roleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/analytics/UUserLog;->userID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAppID(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->appID:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelID(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->channelID:Ljava/lang/Integer;

    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->deviceID:Ljava/lang/String;

    return-void
.end method

.method public setOpType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->opType:Ljava/lang/Integer;

    return-void
.end method

.method public setRoleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->roleID:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->serverID:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UUserLog;->userID:Ljava/lang/Integer;

    return-void
.end method
