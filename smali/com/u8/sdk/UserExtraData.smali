.class public Lcom/u8/sdk/UserExtraData;
.super Ljava/lang/Object;
.source "UserExtraData.java"


# static fields
.field public static final TYPE_CREATE_ROLE:I = 0x2

.field public static final TYPE_ENTER_COPY:I = 0x6

.field public static final TYPE_ENTER_GAME:I = 0x3

.field public static final TYPE_EXIT_COPY:I = 0x7

.field public static final TYPE_EXIT_GAME:I = 0x5

.field public static final TYPE_LEVEL_UP:I = 0x4

.field public static final TYPE_SELECT_SERVER:I = 0x1

.field public static final TYPE_VIP_LEVELUP:I = 0x8


# instance fields
.field private dataType:I

.field private moneyNum:I

.field private partyID:Ljava/lang/String;

.field private partyMasterID:Ljava/lang/String;

.field private partyMasterName:Ljava/lang/String;

.field private partyName:Ljava/lang/String;

.field private power:Ljava/lang/String;

.field private professionID:Ljava/lang/String;

.field private professionName:Ljava/lang/String;

.field private roleCreateTime:J

.field private roleGender:I

.field private roleID:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleLevelUpTime:J

.field private roleName:Ljava/lang/String;

.field private serverID:I

.field private serverName:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->professionID:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->professionName:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->power:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyID:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyName:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyMasterID:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyMasterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->dataType:I

    return v0
.end method

.method public getMoneyNum()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->moneyNum:I

    return v0
.end method

.method public getPartyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyID:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyMasterID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyMasterID:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyMasterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyMasterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getProfessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->professionID:Ljava/lang/String;

    return-object v0
.end method

.method public getProfessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->professionName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/u8/sdk/UserExtraData;->roleCreateTime:J

    return-wide v0
.end method

.method public getRoleGender()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->roleGender:I

    return v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevelUpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/u8/sdk/UserExtraData;->roleLevelUpTime:J

    return-wide v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->serverID:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->dataType:I

    return-void
.end method

.method public setMoneyNum(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->moneyNum:I

    return-void
.end method

.method public setPartyID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->partyID:Ljava/lang/String;

    return-void
.end method

.method public setPartyMasterID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->partyMasterID:Ljava/lang/String;

    return-void
.end method

.method public setPartyMasterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->partyMasterName:Ljava/lang/String;

    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->partyName:Ljava/lang/String;

    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->power:Ljava/lang/String;

    return-void
.end method

.method public setProfessionID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->professionID:Ljava/lang/String;

    return-void
.end method

.method public setProfessionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->professionName:Ljava/lang/String;

    return-void
.end method

.method public setRoleCreateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/u8/sdk/UserExtraData;->roleCreateTime:J

    return-void
.end method

.method public setRoleGender(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->roleGender:I

    return-void
.end method

.method public setRoleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleID:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevelUpTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/u8/sdk/UserExtraData;->roleLevelUpTime:J

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerID(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->serverID:I

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->vip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "dataType"

    iget v3, p0, Lcom/u8/sdk/UserExtraData;->dataType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "roleID"

    iget-object v3, p0, Lcom/u8/sdk/UserExtraData;->roleID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleName"

    iget-object v3, p0, Lcom/u8/sdk/UserExtraData;->roleName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleLevel"

    iget-object v3, p0, Lcom/u8/sdk/UserExtraData;->roleLevel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serverID"

    iget v3, p0, Lcom/u8/sdk/UserExtraData;->serverID:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "serverName"

    iget-object v3, p0, Lcom/u8/sdk/UserExtraData;->serverName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleCreateTime"

    iget-wide v4, p0, Lcom/u8/sdk/UserExtraData;->roleCreateTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "vip"

    iget-object v3, p0, Lcom/u8/sdk/UserExtraData;->vip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
