.class public final Lcom/tendcloud/tenddata/TDGAMission;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAMission$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onBegin(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TDGAMission.onBegin()#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onBegin()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    const-string v1, ""

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission$a;->a:Lcom/tendcloud/tenddata/TDGAMission$a;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->setMissionId(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Ljava/lang/String;)V

    :cond_1
    sput-object p0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static onCompleted(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TDGAMission.onCompleted()#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onCompleted()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    const-string v1, ""

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission$a;->b:Lcom/tendcloud/tenddata/TDGAMission$a;

    sget-object v6, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->setMissionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1
.end method

.method public static onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TDGAMission.onFailed#SDK not initialized. "

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAMission.onFailed()# missionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission$a;->c:Lcom/tendcloud/tenddata/TDGAMission$a;

    sget-object v6, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/TDGAMission$a;JLcom/tendcloud/tenddata/game/a;)V

    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->setMissionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1
.end method
