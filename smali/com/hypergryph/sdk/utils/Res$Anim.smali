.class public Lcom/hypergryph/sdk/utils/Res$Anim;
.super Ljava/lang/Object;
.source "Res.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/utils/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Anim"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "anim"


# instance fields
.field public ACT_FADE_IN:I

.field public ACT_FADE_OUT:I

.field public ACT_STAY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_act_fadein"

    const-string v2, "anim"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_IN:I

    .line 79
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_act_fadeout"

    const-string v2, "anim"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_FADE_OUT:I

    .line 80
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_act_stay"

    const-string v2, "anim"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Anim;->ACT_STAY:I

    return-void
.end method
