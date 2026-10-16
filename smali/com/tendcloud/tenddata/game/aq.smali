.class final Lcom/tendcloud/tenddata/game/aq;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/ap;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ap;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/ap;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/tendcloud/tenddata/game/ap;
    .locals 1

    :try_start_0
    new-array v0, p1, [Lcom/tendcloud/tenddata/game/ap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->a(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->a(I)[Lcom/tendcloud/tenddata/game/ap;

    move-result-object v0

    return-object v0
.end method
