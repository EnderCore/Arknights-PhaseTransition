.class public Lcom/hypergryph/sdk/utils/Res$Layout;
.super Ljava/lang/Object;
.source "Res.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/utils/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "layout"


# instance fields
.field public BRIDGE_LAYOUT:I

.field public NETWORK_LOADING:I

.field public PANEL_PREPAY:I

.field public PAYRESULT:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_panel_prepay"

    const-string v2, "layout"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Layout;->PANEL_PREPAY:I

    .line 45
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_network_loading"

    const-string v2, "layout"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Layout;->NETWORK_LOADING:I

    .line 46
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_payresult"

    const-string v2, "layout"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Layout;->PAYRESULT:I

    .line 47
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_bridge_layout"

    const-string v2, "layout"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$Layout;->BRIDGE_LAYOUT:I

    return-void
.end method
