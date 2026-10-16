.class public Lcom/hypergryph/sdk/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;,
        Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;,
        Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
    }
.end annotation


# static fields
.field private static final POLLING_INTERNALS:[I


# instance fields
.field private m_alertDialog:Landroid/app/Dialog;

.field private m_isSendingService:Z

.field private m_networkDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hypergryph/sdk/activity/BaseActivity;->POLLING_INTERNALS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d0
        0xbb8
        0x1388
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    return-void
.end method

.method private _dismissAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 311
    iput-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 315
    iput-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    .line 317
    :cond_1
    return-void
.end method

.method static synthetic access$102(Lcom/hypergryph/sdk/activity/BaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/BaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    return p1
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/hypergryph/sdk/activity/BaseActivity;->POLLING_INTERNALS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/hypergryph/sdk/activity/BaseActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/BaseActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/hypergryph/sdk/activity/BaseActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/hypergryph/sdk/activity/BaseActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 268
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    sget-object v1, Lcom/hypergryph/sdk/utils/Res;->string:Lcom/hypergryph/sdk/utils/Res$StringVal;

    iget v1, v1, Lcom/hypergryph/sdk/utils/Res$StringVal;->HG_DIALOG_OK:I

    invoke-static {v1}, Lcom/hypergryph/sdk/utils/Res;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hypergryph/sdk/activity/BaseActivity$1;

    invoke-direct {v2, p0, p2}, Lcom/hypergryph/sdk/activity/BaseActivity$1;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    .line 283
    iget-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_alertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->_dismissAllDialogs()V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 259
    return-void
.end method

.method public hideNetworkLoading()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 306
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInst"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hypergryph/sdk/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 247
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->_dismissAllDialogs()V

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 253
    return-void
.end method

.method public sendPollingService(Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Polling;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/hypergryph/sdk/HGCallbacks$Polling;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 238
    :cond_1
    iput-boolean v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    .line 239
    new-instance v2, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Polling;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/hypergryph/sdk/activity/BaseActivity$PollingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public sendService(Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/hypergryph/sdk/HGCallbacks$Network;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    iget-boolean v2, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_1
    iput-boolean v0, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_isSendingService:Z

    .line 226
    new-instance v2, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;Ljava/lang/String;Lcom/hypergryph/sdk/HGCallbacks$Network;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/hypergryph/sdk/activity/BaseActivity$ServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public showNetworkLoading()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 287
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    if-nez v3, :cond_1

    .line 288
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 290
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 291
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 292
    .local v2, "dialogWin":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 293
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/hypergryph/sdk/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/hypergryph/sdk/utils/Res;->layout:Lcom/hypergryph/sdk/utils/Res$Layout;

    iget v4, v4, Lcom/hypergryph/sdk/utils/Res$Layout;->NETWORK_LOADING:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "contentView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iput-object v1, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    .line 300
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "dialogWin":Landroid/view/Window;
    :cond_1
    iget-object v3, p0, Lcom/hypergryph/sdk/activity/BaseActivity;->m_networkDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 301
    return-void
.end method
