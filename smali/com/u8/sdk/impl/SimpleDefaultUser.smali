.class public Lcom/u8/sdk/impl/SimpleDefaultUser;
.super Ljava/lang/Object;
.source "SimpleDefaultUser.java"

# interfaces
.implements Lcom/u8/sdk/IUser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/impl/SimpleDefaultUser$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/impl/SimpleDefaultUser$1;-><init>(Lcom/u8/sdk/impl/SimpleDefaultUser;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tip(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    const-string v0, "\u8c03\u7528[\u9000\u51fa\u6e38\u620f\u786e\u8ba4]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public getExtensionForMeta()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "nativePlugin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 1

    const-string v0, "\u8c03\u7528[\u767b\u5f55]\u63a5\u53e3\u6210\u529f\uff0c\u8fd9\u4e2a\u9ed8\u8ba4\u7684\u5b9e\u73b0\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 1

    const-string v0, "\u8c03\u7528[\u767b\u51fa\u63a5\u53e3]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u8c03\u7528[\u4e0a\u4f20\u793c\u5305\u5151\u6362\u7801]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public queryAntiAddiction()V
    .locals 1

    const-string v0, "\u6e38\u620f\u4e2d\u6682\u65f6\u4e0d\u9700\u8981\u8c03\u7528\u8be5\u63a5\u53e3"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public queryProducts()V
    .locals 1

    const-string v0, "\u8c03\u7528[\u5546\u54c1\u67e5\u8be2]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public realNameRegister()V
    .locals 1

    const-string v0, "\u6e38\u620f\u4e2d\u6682\u65f6\u4e0d\u9700\u8981\u8c03\u7528\u8be5\u63a5\u53e3"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public showAccountCenter()Z
    .locals 1

    const-string v0, "\u8c03\u7528[\u4e2a\u4eba\u4e2d\u5fc3]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 1

    const-string v0, "\u8c03\u7528[\u63d0\u4ea4\u6269\u5c55\u6570\u636e]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public switchLogin()V
    .locals 1

    const-string v0, "\u8c03\u7528[\u5207\u6362\u5e10\u53f7]\u63a5\u53e3\u6210\u529f\uff0c\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    invoke-direct {p0, v0}, Lcom/u8/sdk/impl/SimpleDefaultUser;->tip(Ljava/lang/String;)V

    return-void
.end method
