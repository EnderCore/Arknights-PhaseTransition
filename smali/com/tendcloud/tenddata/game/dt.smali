.class public Lcom/tendcloud/tenddata/game/dt;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# static fields
.field public static a:Lcom/tendcloud/tenddata/game/ds; = null

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "deviceId"

.field private static final e:Ljava/lang/String; = "runtimeConfig"

.field private static final f:Ljava/lang/String; = "hardwareConfig"

.field private static final g:Ljava/lang/String; = "softwareConfig"


# instance fields
.field private h:Lcom/tendcloud/tenddata/game/du;

.field private i:Lcom/tendcloud/tenddata/game/dr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    new-instance v0, Lcom/tendcloud/tenddata/game/du;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/du;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dt;->h:Lcom/tendcloud/tenddata/game/du;

    new-instance v0, Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dr;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dt;->i:Lcom/tendcloud/tenddata/game/dr;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dt;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    const-string v0, "type"

    const-string v1, "mobile"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/ds;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ds;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dt;->a:Lcom/tendcloud/tenddata/game/ds;

    const-string v0, "deviceId"

    sget-object v1, Lcom/tendcloud/tenddata/game/dt;->a:Lcom/tendcloud/tenddata/game/ds;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ds;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/dv;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dv;-><init>()V

    const-string v1, "runtimeConfig"

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dv;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "hardwareConfig"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dt;->i:Lcom/tendcloud/tenddata/game/dr;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dr;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "softwareConfig"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dt;->h:Lcom/tendcloud/tenddata/game/du;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/du;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/tendcloud/tenddata/game/du;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dt;->h:Lcom/tendcloud/tenddata/game/du;

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/game/dr;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dt;->i:Lcom/tendcloud/tenddata/game/dr;

    return-object v0
.end method
