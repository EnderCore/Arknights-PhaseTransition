.class public Lcom/hypergryph/sdk/utils/Res$ID;
.super Ljava/lang/Object;
.source "Res.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/utils/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ID"
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "id"


# instance fields
.field public BTN_ALIPAY:I

.field public BTN_PAYMENT_CANCEL:I

.field public BTN_WECHAT:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_btn_cancel"

    const-string v2, "id"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_PAYMENT_CANCEL:I

    .line 72
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_btn_alipay"

    const-string v2, "id"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_ALIPAY:I

    .line 73
    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$100()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hg_btn_wechat"

    const-string v2, "id"

    invoke-static {}, Lcom/hypergryph/sdk/utils/Res;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hypergryph/sdk/utils/Res$ID;->BTN_WECHAT:I

    return-void
.end method
