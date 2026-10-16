.class public Lcom/u8/sdk/plugin/U8SpecialInterface;
.super Ljava/lang/Object;
.source "U8SpecialInterface.java"

# interfaces
.implements Lcom/u8/sdk/ISpecialInterface;


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8SpecialInterface;


# instance fields
.field private plugin:Lcom/u8/sdk/ISpecialInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8SpecialInterface;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8SpecialInterface;->instance:Lcom/u8/sdk/plugin/U8SpecialInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8SpecialInterface;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8SpecialInterface;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8SpecialInterface;->instance:Lcom/u8/sdk/plugin/U8SpecialInterface;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8SpecialInterface;->instance:Lcom/u8/sdk/plugin/U8SpecialInterface;

    return-object v0
.end method


# virtual methods
.method public isFromGameCenter(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    invoke-interface {v0, p1}, Lcom/u8/sdk/ISpecialInterface;->isFromGameCenter(Landroid/app/Activity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performFeature(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    invoke-interface {v0, p1, p2}, Lcom/u8/sdk/ISpecialInterface;->performFeature(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSpecialInterface(Lcom/u8/sdk/ISpecialInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    return-void
.end method

.method public showGameCenter(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8SpecialInterface;->plugin:Lcom/u8/sdk/ISpecialInterface;

    invoke-interface {v0, p1}, Lcom/u8/sdk/ISpecialInterface;->showGameCenter(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
