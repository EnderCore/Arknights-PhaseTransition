.class public Lcom/u8/sdk/U8Order;
.super Ljava/lang/Object;
.source "U8Order.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private orderID:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->orderID:Ljava/lang/String;

    iput-object p2, p0, Lcom/u8/sdk/U8Order;->productID:Ljava/lang/String;

    iput-object p3, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    iput-object p4, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->orderID:Ljava/lang/String;

    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->productID:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8Order;->productName:Ljava/lang/String;

    return-void
.end method
