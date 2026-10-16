.class final enum Lcom/hypergryph/sdk/HGSDK$State;
.super Ljava/lang/Enum;
.source "HGSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/HGSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hypergryph/sdk/HGSDK$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hypergryph/sdk/HGSDK$State;

.field public static final enum IDLE:Lcom/hypergryph/sdk/HGSDK$State;

.field public static final enum INITING:Lcom/hypergryph/sdk/HGSDK$State;

.field public static final enum PAYING:Lcom/hypergryph/sdk/HGSDK$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/hypergryph/sdk/HGSDK$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/hypergryph/sdk/HGSDK$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hypergryph/sdk/HGSDK$State;->IDLE:Lcom/hypergryph/sdk/HGSDK$State;

    new-instance v0, Lcom/hypergryph/sdk/HGSDK$State;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v3}, Lcom/hypergryph/sdk/HGSDK$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hypergryph/sdk/HGSDK$State;->INITING:Lcom/hypergryph/sdk/HGSDK$State;

    new-instance v0, Lcom/hypergryph/sdk/HGSDK$State;

    const-string v1, "PAYING"

    invoke-direct {v0, v1, v4}, Lcom/hypergryph/sdk/HGSDK$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hypergryph/sdk/HGSDK$State;->PAYING:Lcom/hypergryph/sdk/HGSDK$State;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hypergryph/sdk/HGSDK$State;

    sget-object v1, Lcom/hypergryph/sdk/HGSDK$State;->IDLE:Lcom/hypergryph/sdk/HGSDK$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hypergryph/sdk/HGSDK$State;->INITING:Lcom/hypergryph/sdk/HGSDK$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hypergryph/sdk/HGSDK$State;->PAYING:Lcom/hypergryph/sdk/HGSDK$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hypergryph/sdk/HGSDK$State;->$VALUES:[Lcom/hypergryph/sdk/HGSDK$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hypergryph/sdk/HGSDK$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/hypergryph/sdk/HGSDK$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hypergryph/sdk/HGSDK$State;

    return-object v0
.end method

.method public static values()[Lcom/hypergryph/sdk/HGSDK$State;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/hypergryph/sdk/HGSDK$State;->$VALUES:[Lcom/hypergryph/sdk/HGSDK$State;

    invoke-virtual {v0}, [Lcom/hypergryph/sdk/HGSDK$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hypergryph/sdk/HGSDK$State;

    return-object v0
.end method
