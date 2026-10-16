.class public Lcom/tendcloud/tenddata/game/dn;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    return-void
.end method


# virtual methods
.method public a_()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
