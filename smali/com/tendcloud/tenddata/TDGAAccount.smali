.class public final Lcom/tendcloud/tenddata/TDGAAccount;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAAccount$a;,
        Lcom/tendcloud/tenddata/TDGAAccount$Gender;,
        Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    }
.end annotation


# static fields
.field public static a:Lcom/tendcloud/tenddata/TDGAAccount; = null

.field private static final b:Ljava/lang/String; = "accountId"

.field private static final c:Ljava/lang/String; = "userLevel"

.field private static final d:Ljava/lang/String; = "gender"

.field private static final e:Ljava/lang/String; = "accountName"

.field private static final f:Ljava/lang/String; = "age"

.field private static final g:Ljava/lang/String; = "accountType"

.field private static final h:Ljava/lang/String; = "account_file"

.field private static final i:Ljava/lang/String; = "levelup_duration"

.field private static final j:Ljava/lang/String; = "game_duration"

.field private static final k:Ljava/lang/String; = "mission_duration"

.field private static final l:I


# instance fields
.field private m:Ljava/lang/String;

.field private n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/util/concurrent/atomic/AtomicLong;

.field private u:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    return-void
.end method

.method private a()J
    .locals 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 6

    const/4 v4, 0x0

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount;-><init>()V

    iput-object p1, v1, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iput-object p2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "accountType"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    const-string v2, "accountName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    const-string v2, "userLevel"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    const-string v2, "age"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    const-string v2, "gender"

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    const-string v2, "game_duration"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_0
    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    :cond_1
    return-object v1
.end method

.method private static a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V
    .locals 3

    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountId"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "accountType"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "accountName"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "userLevel"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "age"

    iget v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gender"

    iget-object v2, p1, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    return-void
.end method

.method private c()J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TDGAAccount.getLevelUpDuration() called."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v4

    iget-object v3, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "levelup_duration"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "levelup_duration"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sub-long v0, v4, v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private e()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    return-void
.end method

.method public static getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 2

    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/at;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    return-object v0
.end method

.method public static setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/zz;->a:Z

    if-nez v1, :cond_0

    const-string v1, "TDGAAccount.setAccount()#SDK not initialized. "

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TDGAAccount.setAccount()#accountid is null, please check it."

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/as;->eForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccount()#accountid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object p0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/at;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->setAccountId(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->setAccountId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/at;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V

    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->b:Lcom/tendcloud/tenddata/TDGAAccount;

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "TDGAAccount.setMissionStart() called. missionId="

    aput-object v4, v1, v5

    aput-object p1, v1, v6

    const/4 v4, 0x2

    const-string v5, "   gameduration="

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mission_duration_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TDGAAccount.getMissionDuration() called. missionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v2, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TalkingDataGA.getContext() == null."

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v2

    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v5, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mission_duration_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cloning not allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method

.method public final getAge()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    return v0
.end method

.method public final getGameServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    return v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountName()#setAccountName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    return-void
.end method

.method public final setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountType()#accountType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    return-void
.end method

.method public final setAge(I)V
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAge()#age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    goto :goto_0
.end method

.method public final setGameServer(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGameServer()#gameServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGender()#setGender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    return-void
.end method

.method public final setLevel(I)V
    .locals 7

    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setLevel()#setLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    iget v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->c()J

    move-result-wide v4

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    sget-object v3, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v6, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method

.method public final updateGameDuration()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TDGAAccount.updateGameDuration() called."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->dForInternal([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForInternal([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "game_duration"

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    goto :goto_0
.end method
