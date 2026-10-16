.class public Lcom/u8/sdk/ProductQueryResult;
.super Ljava/lang/Object;
.source "ProductQueryResult.java"


# instance fields
.field private currency:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ProductQueryResult;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ProductQueryResult;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ProductQueryResult;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ProductQueryResult;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ProductQueryResult;->currency:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ProductQueryResult;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ProductQueryResult;->productID:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ProductQueryResult;->productName:Ljava/lang/String;

    return-void
.end method
