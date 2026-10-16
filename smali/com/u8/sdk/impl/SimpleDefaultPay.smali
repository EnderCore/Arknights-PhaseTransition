.class public Lcom/u8/sdk/impl/SimpleDefaultPay;
.super Ljava/lang/Object;
.source "SimpleDefaultPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8c03\u7528[\u652f\u4ed8\u63a5\u53e3]\u63a5\u53e3\u6210\u529f\uff0cPayParams\u4e2d\u7684\u53c2\u6570\uff0c\u9664\u4e86extension\uff0c\u5176\u4ed6\u7684\u8bf7\u90fd\u8d4b\u503c\uff0c\u6700\u540e\u8fd8\u9700\u8981\u7ecf\u8fc7\u6253\u5305\u5de5\u5177\u6765\u6253\u51fa\u6700\u7ec8\u7684\u6e20\u9053\u5305"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
